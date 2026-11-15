package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import defpackage.e74;
import defpackage.w74;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a>\u0010\u0007\u001a\u00020\u0006*\u00020\u00002(\b\u0004\u0010\u0005\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001H\u0086\b¢\u0006\u0004\b\u0007\u0010\b\u001a>\u0010\t\u001a\u00020\u0006*\u00020\u00002(\b\u0004\u0010\u0005\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001H\u0086\b¢\u0006\u0004\b\t\u0010\b\u001a,\u0010\f\u001a\u00020\u0006*\u00020\u00002\u0016\b\u0004\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u00040\nH\u0086\b¢\u0006\u0004\b\f\u0010\r\u001a\u0080\u0001\u0010\u0011\u001a\u00020\u0006*\u00020\u00002(\b\u0006\u0010\u000e\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012(\b\u0006\u0010\u000f\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u0016\b\u0006\u0010\u0010\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u00040\nH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroid/widget/TextView;", "Lkotlin/Function4;", "", "", "Lzfb;", "action", "Landroid/text/TextWatcher;", "doBeforeTextChanged", "(Landroid/widget/TextView;Lw74;)Landroid/text/TextWatcher;", "doOnTextChanged", "Lkotlin/Function1;", "Landroid/text/Editable;", "doAfterTextChanged", "(Landroid/widget/TextView;Le74;)Landroid/text/TextWatcher;", "beforeTextChanged", "onTextChanged", "afterTextChanged", "addTextChangedListener", "(Landroid/widget/TextView;Lw74;Lw74;Le74;)Landroid/text/TextWatcher;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class TextViewKt {
    public static final TextWatcher addTextChangedListener(TextView textView, w74 w74Var, w74 w74Var2, e74 e74Var) {
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(e74Var, w74Var, w74Var2);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static TextWatcher addTextChangedListener$default(TextView textView, w74 w74Var, w74 w74Var2, e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            w74Var = new w74() {
                public final void invoke(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override
                public Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke((CharSequence) obj2, ((Number) obj3).intValue(), ((Number) obj4).intValue(), ((Number) obj5).intValue());
                    return zfb.a;
                }
            };
        }
        if ((i & 2) != 0) {
            w74Var2 = new w74() {
                public final void invoke(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override
                public Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke((CharSequence) obj2, ((Number) obj3).intValue(), ((Number) obj4).intValue(), ((Number) obj5).intValue());
                    return zfb.a;
                }
            };
        }
        if ((i & 4) != 0) {
            e74Var = new e74() {
                public final void invoke(Editable editable) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Editable) obj2);
                    return zfb.a;
                }
            };
        }
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(e74Var, w74Var, w74Var2);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static final TextWatcher doAfterTextChanged(TextView textView, final e74 e74Var) {
        TextWatcher textWatcher = new TextWatcher() {
            @Override
            public void afterTextChanged(Editable s) {
                e74Var.invoke(s);
            }

            @Override
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence text, int start, int before, int count) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doBeforeTextChanged(TextView textView, final w74 w74Var) {
        TextWatcher textWatcher = new TextWatcher() {
            @Override
            public void afterTextChanged(Editable s) {
            }

            @Override
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                w74Var.invoke(text, Integer.valueOf(start), Integer.valueOf(count), Integer.valueOf(after));
            }

            @Override
            public void onTextChanged(CharSequence text, int start, int before, int count) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doOnTextChanged(TextView textView, final w74 w74Var) {
        TextWatcher textWatcher = new TextWatcher() {
            @Override
            public void afterTextChanged(Editable s) {
            }

            @Override
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence text, int start, int before, int count) {
                w74Var.invoke(text, Integer.valueOf(start), Integer.valueOf(before), Integer.valueOf(count));
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }
}
