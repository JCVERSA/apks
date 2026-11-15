package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.NonNull;

final class o {

    private TextView f1774a;

    private TextClassifier f1775b;

    private static final class a {
        @NonNull
        static TextClassifier a(@NonNull TextView textView) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
            return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
        }
    }

    o(TextView textView) {
        this.f1774a = (TextView) androidx.core.util.i.g(textView);
    }

    public TextClassifier a() {
        TextClassifier textClassifier = this.f1775b;
        return textClassifier == null ? a.a(this.f1774a) : textClassifier;
    }

    public void b(TextClassifier textClassifier) {
        this.f1775b = textClassifier;
    }
}
