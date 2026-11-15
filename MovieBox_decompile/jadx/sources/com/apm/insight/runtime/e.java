package com.apm.insight.runtime;

import androidx.annotation.Nullable;
import com.apm.insight.entity.Header;

public class e {

    private static final e f19178b = new e() {

        private Header f19180a = null;

        @Override
        @Nullable
        public final Object b(String str) {
            if (this.f19180a == null) {
                this.f19180a = Header.b(com.apm.insight.e.g());
            }
            return this.f19180a.f().opt(str);
        }
    };

    private e f19179a;

    e() {
        this(f19178b);
    }

    @Nullable
    public Object a(String str) {
        e eVar = this.f19179a;
        if (eVar != null) {
            return eVar.a(str);
        }
        return null;
    }

    @Nullable
    public Object b(String str) {
        e eVar = this.f19179a;
        if (eVar != null) {
            return eVar.b(str);
        }
        return null;
    }

    private e(e eVar) {
        this.f19179a = eVar;
    }
}
