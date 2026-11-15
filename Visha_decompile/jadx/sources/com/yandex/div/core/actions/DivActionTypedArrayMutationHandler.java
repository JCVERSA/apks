package com.yandex.div.core.actions;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionArrayInsertValue;
import com.yandex.div2.DivActionArrayRemoveValue;
import com.yandex.div2.DivActionArraySetValue;
import com.yandex.div2.DivActionTyped;
import defpackage.e74;
import defpackage.eg2;
import defpackage.oj3;
import defpackage.uf2;
import defpackage.wn8;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import org.json.JSONArray;

public final class DivActionTypedArrayMutationHandler implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (divActionTyped instanceof DivActionTyped.c) {
            b(((DivActionTyped.c) divActionTyped).c(), div2View, oj3Var);
            return true;
        }
        if (divActionTyped instanceof DivActionTyped.d) {
            c(((DivActionTyped.d) divActionTyped).c(), div2View, oj3Var);
            return true;
        }
        if (!(divActionTyped instanceof DivActionTyped.e)) {
            return false;
        }
        d(((DivActionTyped.e) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final void b(DivActionArrayInsertValue divActionArrayInsertValue, final Div2View div2View, oj3 oj3Var) {
        final String str = (String) divActionArrayInsertValue.c.b(oj3Var);
        Expression expression = divActionArrayInsertValue.a;
        final Integer numValueOf = expression != null ? Integer.valueOf((int) ((Number) expression.b(oj3Var)).longValue()) : null;
        final Object objD = eg2.d(divActionArrayInsertValue.b, oj3Var);
        DivActionTypedArrayMutationHandlerKt.d(div2View, str, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final JSONArray invoke(JSONArray jSONArray) {
                y45.j(jSONArray, "array");
                int length = jSONArray.length();
                Integer num = numValueOf;
                if (num == null || num.intValue() == length) {
                    final Object obj = objD;
                    return DivActionTypedArrayMutationHandlerKt.c(jSONArray, new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj2) {
                            invoke((List<Object>) obj2);
                            return zfb.a;
                        }

                        public final void invoke(List<Object> list) {
                            y45.j(list, "$this$mutate");
                            list.add(obj);
                        }
                    });
                }
                if (wn8.q(0, length).m(num.intValue())) {
                    final Integer num2 = numValueOf;
                    final Object obj2 = objD;
                    return DivActionTypedArrayMutationHandlerKt.c(jSONArray, new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj3) {
                            invoke((List<Object>) obj3);
                            return zfb.a;
                        }

                        public final void invoke(List<Object> list) {
                            y45.j(list, "$this$mutate");
                            list.add(num2.intValue(), obj2);
                        }
                    });
                }
                eg2.e(div2View, new IndexOutOfBoundsException("Index out of bound (" + numValueOf + ") for mutation " + str + " (" + length + ')'));
                return jSONArray;
            }
        });
    }

    public final void c(DivActionArrayRemoveValue divActionArrayRemoveValue, final Div2View div2View, oj3 oj3Var) {
        final String str = (String) divActionArrayRemoveValue.b.b(oj3Var);
        final int iLongValue = (int) ((Number) divActionArrayRemoveValue.a.b(oj3Var)).longValue();
        DivActionTypedArrayMutationHandlerKt.d(div2View, str, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final JSONArray invoke(JSONArray jSONArray) {
                y45.j(jSONArray, "array");
                int length = jSONArray.length();
                final int i = iLongValue;
                if (i >= 0 && i < length) {
                    return DivActionTypedArrayMutationHandlerKt.c(jSONArray, new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke((List<Object>) obj);
                            return zfb.a;
                        }

                        public final void invoke(List<Object> list) {
                            y45.j(list, "$this$mutate");
                            list.remove(i);
                        }
                    });
                }
                eg2.e(div2View, new IndexOutOfBoundsException("Index out of bound (" + iLongValue + ") for mutation " + str + " (" + length + ')'));
                return jSONArray;
            }
        });
    }

    public final void d(DivActionArraySetValue divActionArraySetValue, final Div2View div2View, oj3 oj3Var) {
        final String str = (String) divActionArraySetValue.c.b(oj3Var);
        final int iLongValue = (int) ((Number) divActionArraySetValue.a.b(oj3Var)).longValue();
        final Object objD = eg2.d(divActionArraySetValue.b, oj3Var);
        DivActionTypedArrayMutationHandlerKt.d(div2View, str, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final JSONArray invoke(JSONArray jSONArray) {
                y45.j(jSONArray, "array");
                int length = jSONArray.length();
                final int i = iLongValue;
                if (i >= 0 && i < length) {
                    final Object obj = objD;
                    return DivActionTypedArrayMutationHandlerKt.c(jSONArray, new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj2) {
                            invoke((List<Object>) obj2);
                            return zfb.a;
                        }

                        public final void invoke(List<Object> list) {
                            y45.j(list, "$this$mutate");
                            list.set(i, obj);
                        }
                    });
                }
                eg2.e(div2View, new IndexOutOfBoundsException("Index out of bound (" + iLongValue + ") for mutation " + str + " (" + length + ')'));
                return jSONArray;
            }
        });
    }
}
