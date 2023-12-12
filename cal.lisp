(hunchentoot:define-easy-handler (calc-handler :uri "/calculate") (request)
  (let ((params (hunchentoot:post-parameters request)))
    (let ((expression (cdr (assoc "expression" params))))
      ;; ここでexpressionを解析し計算を行う
      ;; 注意: 安全な計算のために、evalの使用は避けるべきです
      (hunchentoot:make-json-response (calculate-expression expression)))))
