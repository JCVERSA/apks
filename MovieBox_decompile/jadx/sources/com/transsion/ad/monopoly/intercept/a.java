package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    private a f41100a;

    public static final class C0569a {

        private a f41101a;

        private a f41102b;

        public final C0569a a(a aVar) {
            if (this.f41101a == null) {
                this.f41102b = aVar;
                this.f41101a = aVar;
                return this;
            }
            a aVar2 = this.f41102b;
            if (aVar2 != null) {
                aVar2.f(aVar);
            }
            this.f41102b = aVar;
            return this;
        }

        public final a b() {
            return this.f41101a;
        }
    }

    public final void f(a aVar) {
        this.f41100a = aVar;
    }

    public abstract Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation);

    public final a c() {
        return this.f41100a;
    }

    protected final String d() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    protected final AdPlansHitResponse e() {
        return new AdPlansHitResponse(true, "default");
    }
}
