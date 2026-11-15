package com.transsion.apiinvoke.invoke;

import com.transsion.apiinvoke.common.ApiInvokeLog;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;

public class InvokeChain implements Serializable {
    private static final String TAG = "ChannelChain";
    private static final long serialVersionUID = 8794636311927629097L;
    private final ArrayList<InvokePath> chain = new ArrayList<>();

    public static class InvokeChainQueue extends ArrayBlockingQueue<InvokeChain> {
        private static final long serialVersionUID = -6232538104597555564L;

        public InvokeChainQueue(int i) {
            super(i);
        }

        public synchronized void free(InvokeChain invokeChain) {
            if (size() > 10) {
                return;
            }
            try {
                put(invokeChain);
            } catch (InterruptedException unused) {
                ApiInvokeLog.logInfo(InvokeChain.TAG, "free, put chain error ");
            }
        }

        public synchronized InvokeChain obtain() {
            if (isEmpty()) {
                return new InvokeChain();
            }
            return poll();
        }
    }

    public static class InvokeChainQueueHolder {
        private static final InvokeChainQueue holder = new InvokeChainQueue(16);

        private InvokeChainQueueHolder() {
        }
    }

    public static synchronized InvokeChain obtain() {
        return InvokeChainQueueHolder.holder.obtain();
    }

    public void append(InvokeChain invokeChain) {
        synchronized (this.chain) {
            this.chain.addAll(invokeChain.getChain());
        }
    }

    public InvokeChain autoChain(String str) {
        put(InvokePath.create(str));
        return this;
    }

    public InvokeChain autoPublish(String str, String str2, String str3) {
        put(InvokePath.createPublish(str, str2, str3));
        return this;
    }

    public InvokeChain autoRequest(String str, String str2, String str3) {
        put(InvokePath.createRequest(str, str2, str3));
        return this;
    }

    public synchronized InvokePath callForm() {
        int iChainLength = chainLength();
        if (iChainLength == 0) {
            return null;
        }
        if (iChainLength < 2) {
            return this.chain.get(0);
        }
        return this.chain.get(iChainLength - 1);
    }

    public int chainLength() {
        return this.chain.size();
    }

    public boolean containChannel(String str) {
        synchronized (this.chain) {
            try {
                Iterator<InvokePath> it = this.chain.iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().channelName())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized InvokePath fist() {
        if (this.chain.size() == 0) {
            return null;
        }
        return this.chain.get(0);
    }

    public void free() {
        synchronized (this.chain) {
            this.chain.clear();
        }
        InvokeChainQueueHolder.holder.free(this);
    }

    public ArrayList<InvokePath> getChain() {
        return this.chain;
    }

    public boolean isPublish() {
        return last() instanceof InvokePath.Publish;
    }

    public boolean isRequest() {
        return last() instanceof InvokePath.Request;
    }

    public synchronized InvokePath last() {
        if (this.chain.size() == 0) {
            return null;
        }
        ArrayList<InvokePath> arrayList = this.chain;
        return arrayList.get(arrayList.size() - 1);
    }

    public void put(InvokePath invokePath) {
        synchronized (this.chain) {
            this.chain.add(invokePath);
        }
        ApiInvokeLog.logInfo(TAG, "addChain, path=" + invokePath + " size " + this.chain.size());
    }

    public String toString() {
        if (this.chain.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder("\n");
        synchronized (this.chain) {
            try {
                for (InvokePath invokePath : this.chain) {
                    sb.append(">>");
                    sb.append(invokePath);
                    sb.append("<<");
                    sb.append("\n");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sb.toString();
    }
}
