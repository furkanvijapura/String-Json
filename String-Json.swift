# String-Json
# String-Json
    func serialize(_ value: Any) -> Data?
    {
        if JSONSerialization.isValidJSONObject(value)
        {
            return try? JSONSerialization.data(withJSONObject: value, options: [])
        }
        else
        {
            return String(describing: value).data(using: .utf8)
        }
    }
