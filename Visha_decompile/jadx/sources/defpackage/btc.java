package defpackage;

import java.util.Objects;
import java.util.Optional;
import java.util.function.Supplier;

public abstract class btc {
    public static Optional a(Optional optional, Supplier supplier) {
        Objects.requireNonNull(supplier);
        if (optional.isPresent()) {
            return optional;
        }
        Optional optional2 = (Optional) supplier.get();
        Objects.requireNonNull(optional2);
        return optional2;
    }
}
