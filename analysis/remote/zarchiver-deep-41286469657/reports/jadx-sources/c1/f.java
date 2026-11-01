package c1;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassificationManager;
import ru.zdevs.zarchiver.ui.editor.EditableView;
import ru.zdevs.zarchiver.ui.editor.EditableView.c;

public final class f extends AsyncTask<Void, Void, TextClassification> implements Runnable {

    public final TextClassificationManager f463a;

    public final int f464b = 1000;

    public final EditableView f465c;

    public f(Context context, EditableView editableView) {
        this.f463a = (TextClassificationManager) context.getSystemService("textclassification");
        this.f465c = editableView;
    }

    @Override
    public final TextClassification doInBackground(Void[] voidArr) {
        TextClassification textClassificationClassifyText;
        long j2 = this.f464b;
        EditableView editableView = this.f465c;
        editableView.postDelayed(this, j2);
        LocaleList localeList = LocaleList.getDefault();
        int i2 = Build.VERSION.SDK_INT;
        TextClassificationManager textClassificationManager = this.f463a;
        if (i2 >= 28) {
            String selectedText = editableView.getSelectedText();
            if (TextUtils.isEmpty(selectedText)) {
                return null;
            }
            textClassificationClassifyText = textClassificationManager.getTextClassifier().classifyText(new TextClassification.Request.Builder(selectedText, 0, selectedText.length()).setDefaultLocales(localeList).build());
        } else {
            textClassificationClassifyText = textClassificationManager.getTextClassifier().classifyText(editableView.getEditable(), editableView.getSelectionStart(), editableView.getSelectionEnd(), localeList);
        }
        editableView.removeCallbacks(this);
        return textClassificationClassifyText;
    }

    @Override
    public final void onPostExecute(TextClassification textClassification) {
        EditableView editableView = this.f465c;
        editableView.getClass();
        editableView.f1824m = editableView.startActionMode(editableView.new c(0, textClassification), 1);
    }

    @Override
    public final void run() {
        EditableView editableView = this.f465c;
        editableView.getClass();
        editableView.f1824m = editableView.startActionMode(editableView.new c(0, null), 1);
        cancel(true);
        editableView.removeCallbacks(this);
    }
}
