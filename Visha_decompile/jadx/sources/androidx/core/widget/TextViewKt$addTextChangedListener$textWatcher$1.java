package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.w74;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J1\u0010\r\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\r\u0010\u000eJ1\u0010\u0010\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u000e¨\u0006\u0011"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "Lzfb;", "afterTextChanged", "(Landroid/text/Editable;)V", "", "text", "", TtmlNode.START, "count", TtmlNode.ANNOTATION_POSITION_AFTER, "beforeTextChanged", "(Ljava/lang/CharSequence;III)V", TtmlNode.ANNOTATION_POSITION_BEFORE, "onTextChanged", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 176)
public final class TextViewKt$addTextChangedListener$textWatcher$1 implements TextWatcher {
    final e74 $afterTextChanged;
    final w74 $beforeTextChanged;
    final w74 $onTextChanged;

    public TextViewKt$addTextChangedListener$textWatcher$1(e74 e74Var, w74 w74Var, w74 w74Var2) {
        this.$afterTextChanged = e74Var;
        this.$beforeTextChanged = w74Var;
        this.$onTextChanged = w74Var2;
    }

    @Override
    public void afterTextChanged(Editable s) {
        this.$afterTextChanged.invoke(s);
    }

    @Override
    public void beforeTextChanged(CharSequence text, int start, int count, int after) {
        this.$beforeTextChanged.invoke(text, Integer.valueOf(start), Integer.valueOf(count), Integer.valueOf(after));
    }

    @Override
    public void onTextChanged(CharSequence text, int start, int before, int count) {
        this.$onTextChanged.invoke(text, Integer.valueOf(start), Integer.valueOf(before), Integer.valueOf(count));
    }
}
