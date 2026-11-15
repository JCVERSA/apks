package OppOpO0;

import androidx.recyclerview.widget.RecyclerView;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;
import com.transsion.xuanniao.account.login.view.OppO0OO;
import com.transsion.xuanniao.account.model.data.CountryData;

public class OppO00p implements Runnable {
    public final RecyclerView OppO00p;
    public final CountrySelectActivity OppO0O0;

    public OppO00p(CountrySelectActivity countrySelectActivity, RecyclerView recyclerView) {
        this.OppO0O0 = countrySelectActivity;
        this.OppO00p = recyclerView;
    }

    @Override
    public void run() {
        OppO0OO oppO0OO = this.OppO0O0.e;
        int i = 0;
        for (int i2 = 0; i2 < oppO0OO.o.size(); i2++) {
            if (((CountryData.Country) oppO0OO.o.get(i2)).isSelected) {
                i = i2;
                break;
            }
        }
        if (i >= 0) {
            this.OppO00p.scrollToPosition(Math.min(i + 8, this.OppO0O0.e.getItemCount() - 1));
        }
    }
}
