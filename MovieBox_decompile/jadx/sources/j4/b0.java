package j4;

import android.net.Uri;
import android.os.Build;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

public final class b0 {

    public static final b0 f62944a = new b0();

    public class a {

        public static final int[] f62945a;

        public static final int[] f62946b;

        public static final int[] f62947c;

        public static final int[] f62948d;

        static {
            int[] iArr = new int[WorkInfo.State.values().length];
            try {
                iArr[WorkInfo.State.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkInfo.State.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkInfo.State.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkInfo.State.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkInfo.State.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[WorkInfo.State.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f62945a = iArr;
            int[] iArr2 = new int[BackoffPolicy.values().length];
            try {
                iArr2[BackoffPolicy.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[BackoffPolicy.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            f62946b = iArr2;
            int[] iArr3 = new int[NetworkType.values().length];
            try {
                iArr3[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            f62947c = iArr3;
            int[] iArr4 = new int[OutOfQuotaPolicy.values().length];
            try {
                iArr4[OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr4[OutOfQuotaPolicy.DROP_WORK_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            f62948d = iArr4;
        }
    }

    private b0() {
    }

    public static final int a(BackoffPolicy backoffPolicy) {
        Intrinsics.h(backoffPolicy, "backoffPolicy");
        int i10 = a.f62946b[backoffPolicy.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final Set b(byte[] bytes) {
        Intrinsics.h(bytes, "bytes");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bytes.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int i10 = objectInputStream.readInt();
                    for (int i11 = 0; i11 < i10; i11++) {
                        Uri uri = Uri.parse(objectInputStream.readUTF());
                        boolean z10 = objectInputStream.readBoolean();
                        Intrinsics.g(uri, "uri");
                        linkedHashSet.add(new androidx.work.b.c(uri, z10));
                    }
                    Unit unit = Unit.f64096a;
                    CloseableKt.a(objectInputStream, null);
                    Unit unit2 = Unit.f64096a;
                    CloseableKt.a(byteArrayInputStream, null);
                    return linkedHashSet;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(objectInputStream, th2);
                        throw th3;
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                CloseableKt.a(byteArrayInputStream, th4);
                throw th5;
            }
        }
    }

    public static final BackoffPolicy c(int i10) {
        if (i10 == 0) {
            return BackoffPolicy.EXPONENTIAL;
        }
        if (i10 == 1) {
            return BackoffPolicy.LINEAR;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to BackoffPolicy");
    }

    public static final NetworkType d(int i10) {
        if (i10 == 0) {
            return NetworkType.NOT_REQUIRED;
        }
        if (i10 == 1) {
            return NetworkType.CONNECTED;
        }
        if (i10 == 2) {
            return NetworkType.UNMETERED;
        }
        if (i10 == 3) {
            return NetworkType.NOT_ROAMING;
        }
        if (i10 == 4) {
            return NetworkType.METERED;
        }
        if (Build.VERSION.SDK_INT >= 30 && i10 == 5) {
            return NetworkType.TEMPORARILY_UNMETERED;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to NetworkType");
    }

    public static final OutOfQuotaPolicy e(int i10) {
        if (i10 == 0) {
            return OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        }
        if (i10 == 1) {
            return OutOfQuotaPolicy.DROP_WORK_REQUEST;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to OutOfQuotaPolicy");
    }

    public static final WorkInfo.State f(int i10) {
        if (i10 == 0) {
            return WorkInfo.State.ENQUEUED;
        }
        if (i10 == 1) {
            return WorkInfo.State.RUNNING;
        }
        if (i10 == 2) {
            return WorkInfo.State.SUCCEEDED;
        }
        if (i10 == 3) {
            return WorkInfo.State.FAILED;
        }
        if (i10 == 4) {
            return WorkInfo.State.BLOCKED;
        }
        if (i10 == 5) {
            return WorkInfo.State.CANCELLED;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to State");
    }

    public static final int g(NetworkType networkType) {
        Intrinsics.h(networkType, "networkType");
        int i10 = a.f62947c[networkType.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        int i11 = 2;
        if (i10 == 2) {
            return 1;
        }
        if (i10 != 3) {
            i11 = 4;
            if (i10 == 4) {
                return 3;
            }
            if (i10 != 5) {
                if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.TEMPORARILY_UNMETERED) {
                    return 5;
                }
                throw new IllegalArgumentException("Could not convert " + networkType + " to int");
            }
        }
        return i11;
    }

    public static final int h(OutOfQuotaPolicy policy) {
        Intrinsics.h(policy, "policy");
        int i10 = a.f62948d[policy.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final byte[] i(Set triggers) {
        Intrinsics.h(triggers, "triggers");
        if (triggers.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeInt(triggers.size());
                Iterator it = triggers.iterator();
                while (it.hasNext()) {
                    androidx.work.b.c cVar = (androidx.work.b.c) it.next();
                    objectOutputStream.writeUTF(cVar.a().toString());
                    objectOutputStream.writeBoolean(cVar.b());
                }
                Unit unit = Unit.f64096a;
                CloseableKt.a(objectOutputStream, null);
                CloseableKt.a(byteArrayOutputStream, null);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Intrinsics.g(byteArray, "outputStream.toByteArray()");
                return byteArray;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(objectOutputStream, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                CloseableKt.a(byteArrayOutputStream, th4);
                throw th5;
            }
        }
    }

    public static final int j(WorkInfo.State state) {
        Intrinsics.h(state, "state");
        switch (a.f62945a[state.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
