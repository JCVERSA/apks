package app.fast.ssh;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import app.fast.ssh.core.VpnStatus;
import java.util.LinkedList;
import java.util.List;

public class LogFragment extends Fragment implements VpnStatus.DebugListener {
    private ArrayAdapter<String> adapter;
    private ListView debugList;
    private LinkedList<String> items = new LinkedList<>();

    class AnonymousClass1 implements Runnable {
        final String val$msg;

        AnonymousClass1(String str) {
            this.val$msg = str;
        }

        @Override
        public void run() {
            LogFragment.access$000(LogFragment.this).add(this.val$msg);
            LogFragment.access$100(LogFragment.this).notifyDataSetChanged();
        }
    }

    class AnonymousClass2 implements Runnable {
        final List val$stringList;

        AnonymousClass2(List list) {
            this.val$stringList = list;
        }

        @Override
        public void run() {
            LogFragment.access$100(LogFragment.this).clear();
            LogFragment.access$100(LogFragment.this).addAll(this.val$stringList);
            LogFragment.access$100(LogFragment.this).notifyDataSetChanged();
            if (LogFragment.access$100(LogFragment.this).getCount() > 1) {
                LogFragment.access$200(LogFragment.this).setSelection(LogFragment.access$100(LogFragment.this).getCount() - 1);
            }
        }
    }

    static LinkedList access$000(LogFragment logFragment) {
        return logFragment.items;
    }

    static ArrayAdapter access$100(LogFragment logFragment) {
        return logFragment.adapter;
    }

    static ListView access$200(LogFragment logFragment) {
        return logFragment.debugList;
    }

    public void clear() {
        this.adapter.clear();
        this.adapter.notifyDataSetChanged();
        VpnStatus.clearDebug();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(com.hatunnel.plus.R.layout.l_res_0x7f0c003f, viewGroup, false);
        this.debugList = (ListView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900bb);
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<>(getActivity(), com.hatunnel.plus.R.layout.l_res_0x7f0c002b, this.items);
        this.adapter = arrayAdapter;
        this.debugList.setAdapter((ListAdapter) arrayAdapter);
        VpnStatus.addDebugListener(this);
        return viewInflate;
    }

    public void onDebugReceived(String str) {
        getActivity().runOnUiThread(new AnonymousClass1(str));
    }

    public synchronized void onDebugRestore(List<String> list) {
        getActivity().runOnUiThread(new AnonymousClass2(list));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        VpnStatus.removeDebugListener(this);
    }
}
