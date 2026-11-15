package com.transsion.baselib.db.video;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

public interface VideoDetailPlayDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:32:0x0097  */
        /* JADX WARN: Code duplicated, block: B:33:0x0101  */
        /* JADX WARN: Code duplicated, block: B:7:0x0019  */
        public static Object a(VideoDetailPlayDao videoDetailPlayDao, String str, Continuation continuation) {
            VideoDetailPlayDao$getHistory$1 videoDetailPlayDao$getHistory$1;
            Object obj;
            VideoDetailPlayBean videoDetailPlayBean;
            String str2;
            VideoDetailPlayBean videoDetailPlayBean2;
            VideoDetailPlayDao videoDetailPlayDao2 = videoDetailPlayDao;
            String str3 = str;
            if (continuation instanceof VideoDetailPlayDao$getHistory$1) {
                videoDetailPlayDao$getHistory$1 = (VideoDetailPlayDao$getHistory$1) continuation;
                int i10 = videoDetailPlayDao$getHistory$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    videoDetailPlayDao$getHistory$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    videoDetailPlayDao$getHistory$1 = new VideoDetailPlayDao$getHistory$1(continuation);
                }
            } else {
                videoDetailPlayDao$getHistory$1 = new VideoDetailPlayDao$getHistory$1(continuation);
            }
            Object objN = videoDetailPlayDao$getHistory$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = videoDetailPlayDao$getHistory$1.label;
            if (i11 == 0) {
                ResultKt.b(objN);
                videoDetailPlayDao$getHistory$1.L$0 = videoDetailPlayDao2;
                videoDetailPlayDao$getHistory$1.L$1 = str3;
                videoDetailPlayDao$getHistory$1.label = 1;
                objN = videoDetailPlayDao2.n(str3, videoDetailPlayDao$getHistory$1);
                if (objN == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 == 3) {
                            ResultKt.b(objN);
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    videoDetailPlayBean = (VideoDetailPlayBean) videoDetailPlayDao$getHistory$1.L$1;
                    String str4 = (String) videoDetailPlayDao$getHistory$1.L$0;
                    ResultKt.b(objN);
                    str2 = str4;
                    obj = objN;
                    videoDetailPlayBean2 = (VideoDetailPlayBean) obj;
                    if (videoDetailPlayBean2 == null) {
                        return new VideoDetailPlayBean(str2, videoDetailPlayBean.getId(), videoDetailPlayBean.getEp(), videoDetailPlayBean.getSe(), videoDetailPlayBean.getProgress(), videoDetailPlayBean.getTitle(), videoDetailPlayBean.getCoverUrl(), videoDetailPlayBean.getThumbnail(), videoDetailPlayBean.getVideoUrl(), videoDetailPlayBean.getTimeStamp(), videoDetailPlayBean.getSubtitleSelectId(), videoDetailPlayBean.getTotalDuration(), videoDetailPlayBean.getSubjectDurationSeconds(), videoDetailPlayBean.getAverageHueLight(), videoDetailPlayBean.getSubjectType(), videoDetailPlayBean.getHasDelete(), videoDetailPlayBean.getPlayMode(), videoDetailPlayBean.getDownloadUrl(), videoDetailPlayBean.getDownloadFilePath(), videoDetailPlayBean.getDownloadSize(), videoDetailPlayBean.getDubs(), null, null, false, false, false, null, 132120576, null);
                    }
                    videoDetailPlayBean2.setProgress(videoDetailPlayBean.getProgress());
                    return videoDetailPlayBean2;
                }
                String str5 = (String) videoDetailPlayDao$getHistory$1.L$1;
                VideoDetailPlayDao videoDetailPlayDao3 = (VideoDetailPlayDao) videoDetailPlayDao$getHistory$1.L$0;
                ResultKt.b(objN);
                str3 = str5;
                videoDetailPlayDao2 = videoDetailPlayDao3;
            }
            VideoDetailPlayBean videoDetailPlayBean3 = (VideoDetailPlayBean) objN;
            if (videoDetailPlayBean3 == null) {
                videoDetailPlayDao$getHistory$1.L$0 = null;
                videoDetailPlayDao$getHistory$1.L$1 = null;
                videoDetailPlayDao$getHistory$1.label = 3;
                objN = videoDetailPlayDao2.e(str3, videoDetailPlayDao$getHistory$1);
                return objN == objF ? objF : objN;
            }
            if (Intrinsics.c(videoDetailPlayBean3.getSubjectId(), str3)) {
                return videoDetailPlayBean3;
            }
            videoDetailPlayDao$getHistory$1.L$0 = str3;
            videoDetailPlayDao$getHistory$1.L$1 = videoDetailPlayBean3;
            videoDetailPlayDao$getHistory$1.label = 2;
            Object objE = videoDetailPlayDao2.e(str3, videoDetailPlayDao$getHistory$1);
            if (objE == objF) {
                return objF;
            }
            String str6 = str3;
            obj = objE;
            videoDetailPlayBean = videoDetailPlayBean3;
            str2 = str6;
            videoDetailPlayBean2 = (VideoDetailPlayBean) obj;
            if (videoDetailPlayBean2 == null) {
                return new VideoDetailPlayBean(str2, videoDetailPlayBean.getId(), videoDetailPlayBean.getEp(), videoDetailPlayBean.getSe(), videoDetailPlayBean.getProgress(), videoDetailPlayBean.getTitle(), videoDetailPlayBean.getCoverUrl(), videoDetailPlayBean.getThumbnail(), videoDetailPlayBean.getVideoUrl(), videoDetailPlayBean.getTimeStamp(), videoDetailPlayBean.getSubtitleSelectId(), videoDetailPlayBean.getTotalDuration(), videoDetailPlayBean.getSubjectDurationSeconds(), videoDetailPlayBean.getAverageHueLight(), videoDetailPlayBean.getSubjectType(), videoDetailPlayBean.getHasDelete(), videoDetailPlayBean.getPlayMode(), videoDetailPlayBean.getDownloadUrl(), videoDetailPlayBean.getDownloadFilePath(), videoDetailPlayBean.getDownloadSize(), videoDetailPlayBean.getDubs(), null, null, false, false, false, null, 132120576, null);
            }
            videoDetailPlayBean2.setProgress(videoDetailPlayBean.getProgress());
            return videoDetailPlayBean2;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object b(VideoDetailPlayDao videoDetailPlayDao, VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
            VideoDetailPlayDao$insertOrUpdate$1 videoDetailPlayDao$insertOrUpdate$1;
            if (continuation instanceof VideoDetailPlayDao$insertOrUpdate$1) {
                videoDetailPlayDao$insertOrUpdate$1 = (VideoDetailPlayDao$insertOrUpdate$1) continuation;
                int i10 = videoDetailPlayDao$insertOrUpdate$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    videoDetailPlayDao$insertOrUpdate$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    videoDetailPlayDao$insertOrUpdate$1 = new VideoDetailPlayDao$insertOrUpdate$1(continuation);
                }
            } else {
                videoDetailPlayDao$insertOrUpdate$1 = new VideoDetailPlayDao$insertOrUpdate$1(continuation);
            }
            Object objM = videoDetailPlayDao$insertOrUpdate$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = videoDetailPlayDao$insertOrUpdate$1.label;
            if (i11 == 0) {
                ResultKt.b(objM);
                String subjectId = videoDetailPlayBean.getSubjectId();
                int se2 = videoDetailPlayBean.getSe();
                int ep2 = videoDetailPlayBean.getEp();
                videoDetailPlayDao$insertOrUpdate$1.L$0 = videoDetailPlayDao;
                videoDetailPlayDao$insertOrUpdate$1.L$1 = videoDetailPlayBean;
                videoDetailPlayDao$insertOrUpdate$1.label = 1;
                objM = videoDetailPlayDao.m(subjectId, se2, ep2, videoDetailPlayDao$insertOrUpdate$1);
                if (objM == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    if (i11 == 2) {
                        ResultKt.b(objM);
                        return Unit.f64096a;
                    }
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objM);
                    return Unit.f64096a;
                }
                videoDetailPlayBean = (VideoDetailPlayBean) videoDetailPlayDao$insertOrUpdate$1.L$1;
                videoDetailPlayDao = (VideoDetailPlayDao) videoDetailPlayDao$insertOrUpdate$1.L$0;
                ResultKt.b(objM);
            }
            if (objM == null) {
                videoDetailPlayDao$insertOrUpdate$1.L$0 = null;
                videoDetailPlayDao$insertOrUpdate$1.L$1 = null;
                videoDetailPlayDao$insertOrUpdate$1.label = 2;
                if (videoDetailPlayDao.o(videoDetailPlayBean, videoDetailPlayDao$insertOrUpdate$1) == objF) {
                    return objF;
                }
                return Unit.f64096a;
            }
            videoDetailPlayDao$insertOrUpdate$1.L$0 = null;
            videoDetailPlayDao$insertOrUpdate$1.L$1 = null;
            videoDetailPlayDao$insertOrUpdate$1.label = 3;
            if (videoDetailPlayDao.k(videoDetailPlayBean, videoDetailPlayDao$insertOrUpdate$1) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        /* JADX WARN: Code duplicated, block: B:33:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:34:0x0118  */
        /* JADX WARN: Code duplicated, block: B:37:0x015c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x0177  */
        /* JADX WARN: Code duplicated, block: B:48:0x0185 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:7:0x001d  */
        public static Object c(VideoDetailPlayDao videoDetailPlayDao, String str, int i10, int i11, long j10, long j11, Continuation continuation) {
            VideoDetailPlayDao$insertOrUpdateProgress$1 videoDetailPlayDao$insertOrUpdateProgress$1;
            long j12;
            int i12;
            VideoDetailPlayDao videoDetailPlayDao2;
            String str2;
            Object obj;
            int i13;
            long j13;
            Object obj2;
            long j14;
            VideoDetailPlayDao videoDetailPlayDao3;
            long j15;
            int i14;
            long j16;
            int i15;
            String str3;
            VideoDetailPlayDao videoDetailPlayDao4;
            VideoDetailPlayBean videoDetailPlayBean;
            VideoDetailPlayBean videoDetailPlayBean2;
            VideoDetailPlayBean videoDetailPlayBean3;
            if (continuation instanceof VideoDetailPlayDao$insertOrUpdateProgress$1) {
                videoDetailPlayDao$insertOrUpdateProgress$1 = (VideoDetailPlayDao$insertOrUpdateProgress$1) continuation;
                int i16 = videoDetailPlayDao$insertOrUpdateProgress$1.label;
                if ((i16 & Integer.MIN_VALUE) != 0) {
                    videoDetailPlayDao$insertOrUpdateProgress$1.label = i16 - Integer.MIN_VALUE;
                } else {
                    videoDetailPlayDao$insertOrUpdateProgress$1 = new VideoDetailPlayDao$insertOrUpdateProgress$1(continuation);
                }
            } else {
                videoDetailPlayDao$insertOrUpdateProgress$1 = new VideoDetailPlayDao$insertOrUpdateProgress$1(continuation);
            }
            Object objC = videoDetailPlayDao$insertOrUpdateProgress$1.result;
            Object objF = IntrinsicsKt.f();
            int i17 = videoDetailPlayDao$insertOrUpdateProgress$1.label;
            if (i17 == 0) {
                ResultKt.b(objC);
                videoDetailPlayDao$insertOrUpdateProgress$1.L$0 = videoDetailPlayDao;
                videoDetailPlayDao$insertOrUpdateProgress$1.L$1 = str;
                videoDetailPlayDao$insertOrUpdateProgress$1.I$0 = i10;
                videoDetailPlayDao$insertOrUpdateProgress$1.I$1 = i11;
                videoDetailPlayDao$insertOrUpdateProgress$1.J$0 = j10;
                j12 = j11;
                videoDetailPlayDao$insertOrUpdateProgress$1.J$1 = j12;
                videoDetailPlayDao$insertOrUpdateProgress$1.label = 1;
                Object objM = videoDetailPlayDao.m(str, i10, i11, videoDetailPlayDao$insertOrUpdateProgress$1);
                if (objM == objF) {
                    return objF;
                }
                i12 = i10;
                videoDetailPlayDao2 = videoDetailPlayDao;
                str2 = str;
                obj = objM;
                i13 = i11;
                j13 = j10;
            } else {
                if (i17 != 1) {
                    if (i17 == 2) {
                        long j17 = videoDetailPlayDao$insertOrUpdateProgress$1.J$1;
                        long j18 = videoDetailPlayDao$insertOrUpdateProgress$1.J$0;
                        int i18 = videoDetailPlayDao$insertOrUpdateProgress$1.I$1;
                        int i19 = videoDetailPlayDao$insertOrUpdateProgress$1.I$0;
                        String str4 = (String) videoDetailPlayDao$insertOrUpdateProgress$1.L$1;
                        videoDetailPlayDao4 = (VideoDetailPlayDao) videoDetailPlayDao$insertOrUpdateProgress$1.L$0;
                        ResultKt.b(objC);
                        j16 = j17;
                        j15 = j18;
                        i14 = i18;
                        i15 = i19;
                        str3 = str4;
                        videoDetailPlayBean = (VideoDetailPlayBean) objC;
                        if (videoDetailPlayBean != null) {
                            videoDetailPlayBean2 = new VideoDetailPlayBean(videoDetailPlayBean.getSubjectId(), videoDetailPlayBean.getId(), i14, i15, j16, null, null, null, null, j15, null, null, null, null, null, false, null, null, null, 0L, null, null, null, false, false, false, null, 134217184, null);
                        } else {
                            videoDetailPlayBean2 = new VideoDetailPlayBean(str3, "", i14, i15, j16, null, null, null, null, j15, null, null, null, null, null, false, null, null, null, 0L, null, null, null, false, false, false, null, 134217184, null);
                        }
                        videoDetailPlayDao$insertOrUpdateProgress$1.L$0 = null;
                        videoDetailPlayDao$insertOrUpdateProgress$1.L$1 = null;
                        videoDetailPlayDao$insertOrUpdateProgress$1.label = 3;
                        if (videoDetailPlayDao4.o(videoDetailPlayBean2, videoDetailPlayDao$insertOrUpdateProgress$1) == objF) {
                            return objF;
                        }
                    } else {
                        if (i17 != 3) {
                            if (i17 == 4) {
                                j14 = videoDetailPlayDao$insertOrUpdateProgress$1.J$0;
                                videoDetailPlayDao3 = (VideoDetailPlayDao) videoDetailPlayDao$insertOrUpdateProgress$1.L$0;
                                ResultKt.b(objC);
                                obj2 = objC;
                                videoDetailPlayBean3 = (VideoDetailPlayBean) obj2;
                                if (videoDetailPlayBean3 != null) {
                                    videoDetailPlayBean3.setProgress(j14);
                                    videoDetailPlayDao$insertOrUpdateProgress$1.L$0 = null;
                                    videoDetailPlayDao$insertOrUpdateProgress$1.label = 5;
                                    if (videoDetailPlayDao3.k(videoDetailPlayBean3, videoDetailPlayDao$insertOrUpdateProgress$1) == objF) {
                                        return objF;
                                    }
                                }
                            } else {
                                if (i17 != 5) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.b(objC);
                            }
                            return Unit.f64096a;
                        }
                        ResultKt.b(objC);
                    }
                    return Unit.f64096a;
                }
                long j19 = videoDetailPlayDao$insertOrUpdateProgress$1.J$1;
                j13 = videoDetailPlayDao$insertOrUpdateProgress$1.J$0;
                i13 = videoDetailPlayDao$insertOrUpdateProgress$1.I$1;
                i12 = videoDetailPlayDao$insertOrUpdateProgress$1.I$0;
                str2 = (String) videoDetailPlayDao$insertOrUpdateProgress$1.L$1;
                videoDetailPlayDao2 = (VideoDetailPlayDao) videoDetailPlayDao$insertOrUpdateProgress$1.L$0;
                ResultKt.b(objC);
                j12 = j19;
                obj = objC;
            }
            if (obj != null) {
                videoDetailPlayDao$insertOrUpdateProgress$1.L$0 = videoDetailPlayDao2;
                videoDetailPlayDao$insertOrUpdateProgress$1.L$1 = null;
                videoDetailPlayDao$insertOrUpdateProgress$1.J$0 = j12;
                videoDetailPlayDao$insertOrUpdateProgress$1.label = 4;
                Object objL = videoDetailPlayDao2.l(str2, i12, i13, videoDetailPlayDao$insertOrUpdateProgress$1);
                if (objL == objF) {
                    return objF;
                }
                obj2 = objL;
                j14 = j12;
                videoDetailPlayDao3 = videoDetailPlayDao2;
                videoDetailPlayBean3 = (VideoDetailPlayBean) obj2;
                if (videoDetailPlayBean3 != null) {
                    videoDetailPlayBean3.setProgress(j14);
                    videoDetailPlayDao$insertOrUpdateProgress$1.L$0 = null;
                    videoDetailPlayDao$insertOrUpdateProgress$1.label = 5;
                    if (videoDetailPlayDao3.k(videoDetailPlayBean3, videoDetailPlayDao$insertOrUpdateProgress$1) == objF) {
                        return objF;
                    }
                }
                return Unit.f64096a;
            }
            videoDetailPlayDao$insertOrUpdateProgress$1.L$0 = videoDetailPlayDao2;
            videoDetailPlayDao$insertOrUpdateProgress$1.L$1 = str2;
            videoDetailPlayDao$insertOrUpdateProgress$1.I$0 = i12;
            videoDetailPlayDao$insertOrUpdateProgress$1.I$1 = i13;
            videoDetailPlayDao$insertOrUpdateProgress$1.J$0 = j13;
            videoDetailPlayDao$insertOrUpdateProgress$1.J$1 = j12;
            videoDetailPlayDao$insertOrUpdateProgress$1.label = 2;
            objC = videoDetailPlayDao2.c(str2, videoDetailPlayDao$insertOrUpdateProgress$1);
            if (objC == objF) {
                return objF;
            }
            j15 = j13;
            i14 = i13;
            j16 = j12;
            i15 = i12;
            str3 = str2;
            videoDetailPlayDao4 = videoDetailPlayDao2;
            videoDetailPlayBean = (VideoDetailPlayBean) objC;
            if (videoDetailPlayBean != null) {
                videoDetailPlayBean2 = new VideoDetailPlayBean(videoDetailPlayBean.getSubjectId(), videoDetailPlayBean.getId(), i14, i15, j16, null, null, null, null, j15, null, null, null, null, null, false, null, null, null, 0L, null, null, null, false, false, false, null, 134217184, null);
            } else {
                videoDetailPlayBean2 = new VideoDetailPlayBean(str3, "", i14, i15, j16, null, null, null, null, j15, null, null, null, null, null, false, null, null, null, 0L, null, null, null, false, false, false, null, 134217184, null);
            }
            videoDetailPlayDao$insertOrUpdateProgress$1.L$0 = null;
            videoDetailPlayDao$insertOrUpdateProgress$1.L$1 = null;
            videoDetailPlayDao$insertOrUpdateProgress$1.label = 3;
            if (videoDetailPlayDao4.o(videoDetailPlayBean2, videoDetailPlayDao$insertOrUpdateProgress$1) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }
    }

    Object a(Continuation continuation);

    Object b(String str, String str2, Continuation continuation);

    Object c(String str, Continuation continuation);

    Object d(int i10, int i11, Continuation continuation);

    Object e(String str, Continuation continuation);

    Object f(String str, int i10, int i11, long j10, long j11, Continuation continuation);

    Object g(String str, Continuation continuation);

    Object h(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation);

    Object i(int i10, int i11, int i12, Continuation continuation);

    Object j(String str, Continuation continuation);

    Object k(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation);

    Object l(String str, int i10, int i11, Continuation continuation);

    Object m(String str, int i10, int i11, Continuation continuation);

    Object n(String str, Continuation continuation);

    Object o(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation);

    Object p(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation);
}
