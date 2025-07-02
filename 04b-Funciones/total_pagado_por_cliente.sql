CREATE FUNCTION total_pagado_por_cliente(cliente_id INT)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    total NUMERIC;
BEGIN
    -- Calcular el total pagado por el cliente
    SELECT SUM(amount)
    INTO total
    FROM payment
    WHERE customer_id = cliente_id;

    -- Devolver el total
    RETURN COALESCE(total, 0);
END;
$$;

-- Invocar la función
SELECT total_pagado_por_cliente(524) AS total_pagado;