package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class ListFragment extends Fragment {

    private final Handler f9082a = new Handler();

    private final Runnable f9083b = new Runnable() {
        @Override
        public void run() {
            ListView listView = ListFragment.this.f9086e;
            listView.focusableViewAvailable(listView);
        }
    };

    private final AdapterView.OnItemClickListener f9084c = new a();

    ListAdapter f9085d;

    ListView f9086e;

    View f9087f;

    TextView f9088g;

    View f9089h;

    View f9090i;

    CharSequence f9091j;

    boolean f9092k;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            ListFragment.this.W((ListView) adapterView, view, i10, j10);
        }
    }

    private void V() {
        if (this.f9086e != null) {
            return;
        }
        View view = getView();
        if (view == null) {
            throw new IllegalStateException("Content view not yet created");
        }
        if (view instanceof ListView) {
            this.f9086e = (ListView) view;
        } else {
            TextView textView = (TextView) view.findViewById(16711681);
            this.f9088g = textView;
            if (textView == null) {
                this.f9087f = view.findViewById(R.id.empty);
            } else {
                textView.setVisibility(8);
            }
            this.f9089h = view.findViewById(16711682);
            this.f9090i = view.findViewById(16711683);
            View viewFindViewById = view.findViewById(R.id.list);
            if (!(viewFindViewById instanceof ListView)) {
                if (viewFindViewById != null) {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
            }
            ListView listView = (ListView) viewFindViewById;
            this.f9086e = listView;
            View view2 = this.f9087f;
            if (view2 != null) {
                listView.setEmptyView(view2);
            } else {
                CharSequence charSequence = this.f9091j;
                if (charSequence != null) {
                    this.f9088g.setText(charSequence);
                    this.f9086e.setEmptyView(this.f9088g);
                }
            }
        }
        this.f9092k = true;
        this.f9086e.setOnItemClickListener(this.f9084c);
        ListAdapter listAdapter = this.f9085d;
        if (listAdapter != null) {
            this.f9085d = null;
            X(listAdapter);
        } else if (this.f9089h != null) {
            Y(false, false);
        }
        this.f9082a.post(this.f9083b);
    }

    private void Y(boolean z10, boolean z11) {
        V();
        View view = this.f9089h;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (this.f9092k == z10) {
            return;
        }
        this.f9092k = z10;
        if (z10) {
            if (z11) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
                this.f9090i.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            } else {
                view.clearAnimation();
                this.f9090i.clearAnimation();
            }
            this.f9089h.setVisibility(8);
            this.f9090i.setVisibility(0);
            return;
        }
        if (z11) {
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            this.f9090i.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
        } else {
            view.clearAnimation();
            this.f9090i.clearAnimation();
        }
        this.f9089h.setVisibility(0);
        this.f9090i.setVisibility(8);
    }

    public void X(ListAdapter listAdapter) {
        boolean z10 = this.f9085d != null;
        this.f9085d = listAdapter;
        ListView listView = this.f9086e;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (this.f9092k || z10) {
                return;
            }
            Y(true, requireView().getWindowToken() != null);
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context contextRequireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(contextRequireContext);
        LinearLayout linearLayout = new LinearLayout(contextRequireContext);
        linearLayout.setId(16711682);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(contextRequireContext, null, R.attr.progressBarStyleLarge), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(contextRequireContext);
        frameLayout2.setId(16711683);
        TextView textView = new TextView(contextRequireContext);
        textView.setId(16711681);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(contextRequireContext);
        listView.setId(R.id.list);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override
    public void onDestroyView() {
        this.f9082a.removeCallbacks(this.f9083b);
        this.f9086e = null;
        this.f9092k = false;
        this.f9090i = null;
        this.f9089h = null;
        this.f9087f = null;
        this.f9088g = null;
        super.onDestroyView();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        V();
    }

    public void W(ListView listView, View view, int i10, long j10) {
    }
}
