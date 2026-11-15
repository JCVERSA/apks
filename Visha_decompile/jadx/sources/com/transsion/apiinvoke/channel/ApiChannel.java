package com.transsion.apiinvoke.channel;

import com.transsion.apiinvoke.channel.ApiChannel;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.common.router.ApiRouterManager;
import com.transsion.apiinvoke.common.router.ChannelEntity;
import com.transsion.apiinvoke.invoke.api.InvokeChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;

public class ApiChannel {
    private static final String TAG = "ApiChannel";
    private final List<ChannelCreator> channelCreator;
    private final Map<String, InvokeChannel> channelMap;
    private final List<LocalChannelCreator> localChannelCreator;
    private final Map<String, InvokeChannel> localChannelMap;

    public static class ApiChannelHolder {
        private static final ApiChannel sHolder = new ApiChannel();

        private ApiChannelHolder() {
        }
    }

    public interface ChannelCreator {
        String findServiceChannel(String str);

        InvokeChannel getChannel(String str);

        boolean shouldHandle(String str);
    }

    public static class LocalChannelCreator implements ChannelCreator {
        private ChannelEntity mChannel;

        public LocalChannelCreator(ChannelEntity channelEntity) {
            this.mChannel = channelEntity;
        }

        @Override
        public String findServiceChannel(String str) {
            ChannelEntity channelEntity = this.mChannel;
            return (channelEntity == null || !channelEntity.isInChannel(str)) ? "" : this.mChannel.channelName;
        }

        @Override
        public InvokeChannel getChannel(String str) {
            return new LocalChannel(this.mChannel);
        }

        @Override
        public boolean shouldHandle(String str) {
            ChannelEntity channelEntity = this.mChannel;
            return channelEntity != null && channelEntity.channelName.equals(str);
        }

        public ChannelEntity getChannel() {
            return this.mChannel;
        }
    }

    private synchronized InvokeChannel findLocalChannelByService(LocalChannelCreator localChannelCreator, String str) {
        String strFindServiceChannel = localChannelCreator.findServiceChannel(str);
        if (strFindServiceChannel != null && !"".equals(strFindServiceChannel)) {
            return findLocalChannel(strFindServiceChannel);
        }
        return null;
    }

    private synchronized InvokeChannel findOtherChannel(ChannelCreator channelCreator, String str) {
        try {
            if (!channelCreator.shouldHandle(str)) {
                return null;
            }
            InvokeChannel channel = this.channelMap.get(str);
            if (channel == null || (channel instanceof LocalChannel)) {
                channel = channelCreator.getChannel(str);
                if (channel != null) {
                    this.channelMap.put(str, channel);
                }
            }
            ApiInvokeLog.logInfo(TAG, "found remote channel " + str);
            return channel;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized InvokeChannel findOtherChannelByService(ChannelCreator channelCreator, String str) {
        String strFindServiceChannel = channelCreator.findServiceChannel(str);
        if (strFindServiceChannel != null && !"".equals(strFindServiceChannel)) {
            return findOtherChannel(channelCreator, strFindServiceChannel);
        }
        return null;
    }

    public static ApiChannel getInstance() {
        return ApiChannelHolder.sHolder;
    }

    public static boolean lambda$addLocalChannelCreator$0(LocalChannelCreator localChannelCreator, LocalChannelCreator localChannelCreator2) {
        return localChannelCreator2.getChannel().equals(localChannelCreator.getChannel());
    }

    public synchronized void addChannelCreator(ChannelCreator channelCreator) {
        if (!this.channelCreator.contains(channelCreator)) {
            this.channelCreator.add(channelCreator);
        }
    }

    public void addLocalChannelCreator(final LocalChannelCreator localChannelCreator) {
        synchronized (this.localChannelCreator) {
            this.localChannelCreator.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ApiChannel.lambda$addLocalChannelCreator$0(localChannelCreator, (ApiChannel.LocalChannelCreator) obj);
                }
            });
            this.localChannelCreator.add(localChannelCreator);
        }
    }

    public InvokeChannel findChannel(String str) {
        ChannelEntity channelEntityFindChannel = ApiRouterManager.findChannel(str);
        if (channelEntityFindChannel == null) {
            return null;
        }
        return getChannel(channelEntityFindChannel.channelName);
    }

    public LocalChannel findLocalChannel(String str) {
        InvokeChannel invokeChannelFindLocalChannel;
        synchronized (this.localChannelCreator) {
            try {
                Iterator<LocalChannelCreator> it = this.localChannelCreator.iterator();
                invokeChannelFindLocalChannel = null;
                while (it.hasNext() && (invokeChannelFindLocalChannel = findLocalChannel(it.next(), str)) == null) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (invokeChannelFindLocalChannel instanceof LocalChannel) {
            return (LocalChannel) invokeChannelFindLocalChannel;
        }
        return null;
    }

    public InvokeChannel findRemoteChannel(String str) {
        synchronized (this.channelCreator) {
            try {
                Iterator<ChannelCreator> it = this.channelCreator.iterator();
                while (it.hasNext()) {
                    InvokeChannel invokeChannelFindOtherChannel = findOtherChannel(it.next(), str);
                    if (invokeChannelFindOtherChannel != null) {
                        return invokeChannelFindOtherChannel;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public List<InvokeChannel> getAllChannel(String str, String str2) {
        if (str != null && !"".equals(str)) {
            return getAllChannel(str);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this.localChannelCreator) {
            try {
                Iterator<LocalChannelCreator> it = this.localChannelCreator.iterator();
                while (it.hasNext()) {
                    InvokeChannel invokeChannelFindLocalChannelByService = findLocalChannelByService(it.next(), str2);
                    if (invokeChannelFindLocalChannelByService != null) {
                        arrayList.add(invokeChannelFindLocalChannelByService);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.channelCreator) {
            try {
                Iterator<ChannelCreator> it2 = this.channelCreator.iterator();
                while (it2.hasNext()) {
                    InvokeChannel invokeChannelFindOtherChannelByService = findOtherChannelByService(it2.next(), str2);
                    if (invokeChannelFindOtherChannelByService != null) {
                        arrayList.add(invokeChannelFindOtherChannelByService);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    public InvokeChannel getChannel(String str, String str2) {
        if (str != null && !"".equals(str)) {
            return getChannel(str);
        }
        synchronized (this.localChannelCreator) {
            try {
                Iterator<LocalChannelCreator> it = this.localChannelCreator.iterator();
                while (it.hasNext()) {
                    InvokeChannel invokeChannelFindLocalChannelByService = findLocalChannelByService(it.next(), str2);
                    if (invokeChannelFindLocalChannelByService != null) {
                        return invokeChannelFindLocalChannelByService;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean removeChannel(String str) {
        boolean z;
        synchronized (this.channelMap) {
            z = this.channelMap.remove(str) != null;
        }
        return z;
    }

    public void removeChannelCreator(ChannelCreator channelCreator) {
        this.channelCreator.remove(channelCreator);
    }

    private ApiChannel() {
        this.localChannelMap = new ConcurrentHashMap();
        this.channelMap = new ConcurrentHashMap();
        this.localChannelCreator = new CopyOnWriteArrayList();
        this.channelCreator = new CopyOnWriteArrayList();
    }

    private synchronized InvokeChannel findLocalChannel(LocalChannelCreator localChannelCreator, String str) {
        try {
            if (!localChannelCreator.shouldHandle(str)) {
                return null;
            }
            InvokeChannel channel = this.localChannelMap.get(str);
            if (!(channel instanceof LocalChannel) && (channel = localChannelCreator.getChannel(str)) != null) {
                this.localChannelMap.put(str, channel);
            }
            ApiInvokeLog.logInfo(TAG, "found local channel " + str);
            return channel;
        } catch (Throwable th) {
            throw th;
        }
    }

    public InvokeChannel getChannel(String str) {
        synchronized (this.localChannelCreator) {
            try {
                Iterator<LocalChannelCreator> it = this.localChannelCreator.iterator();
                while (it.hasNext()) {
                    InvokeChannel invokeChannelFindLocalChannel = findLocalChannel(it.next(), str);
                    if (invokeChannelFindLocalChannel != null) {
                        return invokeChannelFindLocalChannel;
                    }
                }
                synchronized (this.channelCreator) {
                    try {
                        Iterator<ChannelCreator> it2 = this.channelCreator.iterator();
                        while (it2.hasNext()) {
                            InvokeChannel invokeChannelFindOtherChannel = findOtherChannel(it2.next(), str);
                            if (invokeChannelFindOtherChannel != null) {
                                return invokeChannelFindOtherChannel;
                            }
                        }
                        return null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public List<InvokeChannel> getAllChannel(String str) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.localChannelCreator) {
            try {
                Iterator<LocalChannelCreator> it = this.localChannelCreator.iterator();
                while (it.hasNext()) {
                    InvokeChannel invokeChannelFindLocalChannel = findLocalChannel(it.next(), str);
                    if (invokeChannelFindLocalChannel != null) {
                        arrayList.add(invokeChannelFindLocalChannel);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.channelCreator) {
            try {
                Iterator<ChannelCreator> it2 = this.channelCreator.iterator();
                while (it2.hasNext()) {
                    InvokeChannel invokeChannelFindOtherChannel = findOtherChannel(it2.next(), str);
                    if (invokeChannelFindOtherChannel != null) {
                        arrayList.add(invokeChannelFindOtherChannel);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }
}
