package b0;

import android.view.View;
import android.widget.AdapterView;
import ru.zdevs.zarchiver.activity.OpenAsDlg;

public final class f implements AdapterView.OnItemClickListener {

    public final OpenAsDlg f280a;

    public f(OpenAsDlg openAsDlg) {
        this.f280a = openAsDlg;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        OpenAsDlg openAsDlg = this.f280a;
        if (openAsDlg.f1594c == null) {
            openAsDlg.f1593b = i2;
        }
        if (openAsDlg.f1593b == i2) {
            openAsDlg.f1596e.onClick(null);
        } else {
            openAsDlg.f1593b = i2;
            openAsDlg.c(true);
        }
    }
}
