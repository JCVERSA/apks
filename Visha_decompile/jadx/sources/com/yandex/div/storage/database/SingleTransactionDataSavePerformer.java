package com.yandex.div.storage.database;

import com.yandex.div.storage.DivDataRepository;
import defpackage.e74;
import defpackage.xx9;
import defpackage.y45;
import defpackage.yx9;
import defpackage.ze3;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class SingleTransactionDataSavePerformer {
    public final yx9 a;

    public SingleTransactionDataSavePerformer(yx9 yx9Var) {
        y45.j(yx9Var, "storageStatementsExecutor");
        this.a = yx9Var;
    }

    public final xx9 b(List list) {
        return StorageStatements.g(StorageStatements.a, list, null, 2, null);
    }

    public final ze3 c(DivDataRepository.ActionOnError actionOnError, e74 e74Var) {
        ArrayList arrayList = new ArrayList();
        e74Var.invoke(arrayList);
        yx9 yx9Var = this.a;
        xx9[] xx9VarArr = (xx9[]) arrayList.toArray(new xx9[0]);
        return yx9Var.a(actionOnError, (xx9[]) Arrays.copyOf(xx9VarArr, xx9VarArr.length));
    }

    public final ze3 d(final List list, DivDataRepository.ActionOnError actionOnError) {
        y45.j(list, "rawJsons");
        y45.j(actionOnError, "actionOnError");
        return c(actionOnError, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((List<xx9>) obj);
                return zfb.a;
            }

            public final void invoke(List<xx9> list2) {
                y45.j(list2, "$this$executeStatements");
                list2.add(this.this$0.b(list));
            }
        });
    }
}
