package com.yandex.div.storage.analytics;

import com.yandex.div.storage.templates.TemplatesContainer;
import com.yandex.div.storage.util.CardErrorTransformer;
import defpackage.c74;
import defpackage.lj5;
import defpackage.lx7;
import defpackage.oj8;
import defpackage.vea;
import defpackage.y45;

public class CardErrorLoggerFactory {
    public final TemplatesContainer a;
    public final lx7 b;
    public final oj8 c;

    public CardErrorLoggerFactory(final oj8 oj8Var, TemplatesContainer templatesContainer, lx7 lx7Var) {
        y45.j(templatesContainer, "templateContainer");
        y45.j(lx7Var, "parsingErrorLogger");
        this.a = templatesContainer;
        this.b = lx7Var;
        this.c = new lj5(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final CardErrorTransformer invoke() {
                oj8 oj8Var2 = oj8Var;
                if (oj8Var2 == null) {
                    return new vea(this.a, this.b);
                }
                Object obj = oj8Var2.get();
                y45.i(obj, "externalErrorTransformer.get()");
                return new CardErrorTransformer.a(obj, new vea(this.a, this.b));
            }
        });
    }
}
