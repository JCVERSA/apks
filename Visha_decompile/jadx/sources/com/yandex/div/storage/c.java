package com.yandex.div.storage;

import defpackage.ao8;
import defpackage.e74;
import defpackage.y45;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public interface c {
    ao8 a(e74 e74Var);

    e b(List list);

    e c(a aVar);

    public static final class a {
        public final List a;
        public final DivDataRepository.ActionOnError b;

        public a(List list, DivDataRepository.ActionOnError actionOnError) {
            y45.j(list, "jsons");
            y45.j(actionOnError, "actionOnError");
            this.a = list;
            this.b = actionOnError;
        }

        public final DivDataRepository.ActionOnError a() {
            return this.b;
        }

        public final List b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && this.b == aVar.b;
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "Payload(jsons=" + this.a + ", actionOnError=" + this.b + ')';
        }

        public a(List list, DivDataRepository.ActionOnError actionOnError, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i & 2) != 0 ? DivDataRepository.ActionOnError.ABORT_TRANSACTION : actionOnError);
        }
    }
}
