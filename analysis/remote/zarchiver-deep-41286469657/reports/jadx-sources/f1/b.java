package f1;

import android.content.Context;
import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ui.ctrl.MenuToggleButton;

public final class b extends f1.c {

    public static final int[] f780k = {R.id.viewListDetail, R.id.viewList, R.id.viewGrid};

    public static final int[] f781l = {R.layout.item_file_detail, R.layout.item_file_compact, R.layout.item_file_grid};

    public static final int[] f782m = {R.id.sortByName, R.id.sortByType, R.id.sortBySize, R.id.sortByDate};

    public static final int[] f783n = {0, 16, 32, 48};

    public int f784c;

    public int f785d;

    public boolean f786e;

    public boolean f787f;

    public boolean f788g;

    public e f789h;

    public final c f790i;

    public final d f791j;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public final void onClick(View view) {
            boolean zIsChecked = ((MenuToggleButton) view).isChecked();
            b bVar = b.this;
            bVar.f786e = zIsChecked;
            bVar.f788g = true;
        }
    }

    public class ViewOnClickListenerC0014b implements View.OnClickListener {
        public ViewOnClickListenerC0014b() {
        }

        @Override
        public final void onClick(View view) {
            boolean zIsChecked = ((MenuToggleButton) view).isChecked();
            b bVar = b.this;
            bVar.f787f = zIsChecked;
            bVar.f788g = true;
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public final void onClick(View view) {
            b bVar = b.this;
            View contentView = bVar.f797a.getContentView();
            int i2 = 0;
            while (true) {
                int[] iArr = b.f780k;
                if (i2 >= 3) {
                    bVar.f788g = true;
                    return;
                }
                int i3 = iArr[i2];
                if (i3 == view.getId()) {
                    ((MenuToggleButton) view).setChecked(true);
                    bVar.f784c = b.f781l[i2];
                } else {
                    ((MenuToggleButton) contentView.findViewById(i3)).setChecked(false);
                }
                i2++;
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public final void onClick(View view) {
            b bVar = b.this;
            View contentView = bVar.f797a.getContentView();
            int i2 = 0;
            while (true) {
                int[] iArr = b.f782m;
                if (i2 >= 4) {
                    bVar.f788g = true;
                    return;
                }
                int i3 = iArr[i2];
                if (i3 == view.getId()) {
                    ((MenuToggleButton) view).setChecked(true);
                    bVar.f785d = b.f783n[i2];
                } else {
                    ((MenuToggleButton) contentView.findViewById(i3)).setChecked(false);
                }
                i2++;
            }
        }
    }

    public interface e {
        void a(int i2, int i3, boolean z2);
    }

    public b(Context context, int i2, boolean z2, int i3) {
        this(context, i2, z2, i3, 0);
    }

    @Override
    public final void onDismiss() {
        e eVar;
        if (!this.f788g || (eVar = this.f789h) == null) {
            return;
        }
        eVar.a(this.f784c, this.f785d | (this.f786e ? 8 : 0), this.f787f);
    }

    public b(Context context, int i2, boolean z2, int i3, int i4) {
        super(context);
        this.f788g = false;
        this.f790i = new c();
        this.f791j = new d();
        this.f784c = i2;
        this.f787f = z2;
        this.f785d = i3 & 240;
        this.f786e = a0.c.K(i3, 8);
        View contentView = this.f797a.getContentView();
        for (int i5 = 0; i5 < 3; i5++) {
            View viewFindViewById = contentView.findViewById(f780k[i5]);
            viewFindViewById.setOnClickListener(this.f790i);
            if (f781l[i5] == this.f784c) {
                ((MenuToggleButton) viewFindViewById).setChecked(true);
            }
        }
        if (a0.c.K(i4, 1)) {
            contentView.findViewById(R.id.viewGrid).setVisibility(4);
            contentView.findViewById(R.id.showGridLabel).setVisibility(4);
        }
        for (int i6 = 0; i6 < 4; i6++) {
            View viewFindViewById2 = contentView.findViewById(f782m[i6]);
            viewFindViewById2.setOnClickListener(this.f791j);
            if (f783n[i6] == this.f785d) {
                ((MenuToggleButton) viewFindViewById2).setChecked(true);
            }
        }
        View viewFindViewById3 = contentView.findViewById(R.id.sortDesc);
        if (this.f786e) {
            ((MenuToggleButton) viewFindViewById3).setChecked(true);
        }
        viewFindViewById3.setOnClickListener(new a());
        View viewFindViewById4 = contentView.findViewById(R.id.showHidden);
        if (this.f787f) {
            ((MenuToggleButton) viewFindViewById4).setChecked(true);
        }
        viewFindViewById4.setOnClickListener(new ViewOnClickListenerC0014b());
    }
}
