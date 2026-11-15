package com.transsion.sniffer_load.viewmodel;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.dbdata.beans.sniff.BookmarkRequest;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.data.ReviewHistory;
import com.transsion.sniffer_load.database.BookmarkDatabase;
import com.transsion.sniffer_load.viewmodel.BookmarksViewModel;
import defpackage.b23;
import defpackage.fi1;
import defpackage.ig0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.t74;
import defpackage.vb;
import defpackage.w6c;
import defpackage.xy5;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public class BookmarksViewModel extends AndroidViewModel {
    public LiveData a;
    public final ig0 b;
    public final MutableLiveData c;
    public LiveData d;

    public class a implements pd7 {
        public final Context b;

        public a(Context context) {
            this.b = context;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse.getCode() == 0 && baseResponse.isSuccess()) {
                BookmarksViewModel.this.i0((BookmarkRequest) baseResponse.getData(), this.b);
                BookmarksViewModel.this.g0((BookmarkRequest) baseResponse.getData());
                xy5.a(1);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public BookmarksViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        this.c = new MutableLiveData();
        ig0 ig0VarA = BookmarkDatabase.c(application).a();
        this.b = ig0VarA;
        this.a = ig0VarA.getAll();
        this.d = BookmarkDatabase.c(application).d().getAllForLiveData();
        B(application);
    }

    public static Boolean I(BaseActivity baseActivity, ReviewHistory reviewHistory, BookmarksViewModel bookmarksViewModel) {
        BookmarkDatabase.c(baseActivity).d().addReviewHistoryWithLimit(reviewHistory);
        return Boolean.TRUE;
    }

    public static void J(Boolean bool) {
    }

    public static void L(Boolean bool) {
    }

    public static void N(Boolean bool) {
    }

    public static void P(Boolean bool) {
    }

    public static void R(Boolean bool) {
    }

    public static BookmarkRequest S(BookmarksViewModel bookmarksViewModel) {
        BookmarkRequest bookmarkRequest = (BookmarkRequest) fi1.b(CacheManager.getInstance().getCache("bookmarks_cache"), BookmarkRequest.class);
        return bookmarkRequest == null ? new BookmarkRequest() : bookmarkRequest;
    }

    public static BookmarkRequest V(BookmarkRequest bookmarkRequest, Context context) {
        CacheManager.getInstance().setCache("bookmarks_cache", fi1.e(bookmarkRequest));
        return bookmarkRequest;
    }

    public static Boolean W(BaseActivity baseActivity, String str, Bitmap bitmap, BaseActivity baseActivity2) {
        BookmarkDatabase.c(baseActivity).a().updateBitmap(str, b23.i(bitmap));
        return Boolean.TRUE;
    }

    public static void X(Boolean bool) {
    }

    public static Boolean Y(BaseActivity baseActivity, String str, String str2, BaseActivity baseActivity2) {
        BookmarkDatabase.c(baseActivity).a().updateImgUrl(str, str2);
        return Boolean.TRUE;
    }

    public static void Z(Boolean bool) {
    }

    public static void b0(Boolean bool) {
    }

    public static Boolean c0(BaseActivity baseActivity, String str, Bitmap bitmap, BaseActivity baseActivity2) {
        BookmarkDatabase.c(baseActivity).d().updateBitmap(str, b23.i(bitmap));
        return Boolean.TRUE;
    }

    public static void d0(Boolean bool) {
    }

    public static Boolean e0(BaseActivity baseActivity, String str, String str2, BaseActivity baseActivity2) {
        BookmarkDatabase.c(baseActivity).d().updateImgUrl(str, str2);
        return Boolean.TRUE;
    }

    public static void f0(Boolean bool) {
    }

    public static void j0(final BaseActivity baseActivity, final String str, final Bitmap bitmap) {
        mc7.K(baseActivity).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return BookmarksViewModel.W(baseActivity, str, bitmap, (BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.X((Boolean) obj);
            }
        });
    }

    public static void k0(final BaseActivity baseActivity, final String str, final String str2) {
        mc7.K(baseActivity).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return BookmarksViewModel.Y(baseActivity, str, str2, (BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.Z((Boolean) obj);
            }
        });
    }

    public static void m0(final BaseActivity baseActivity, final String str, final Bitmap bitmap) {
        mc7.K(baseActivity).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return BookmarksViewModel.c0(baseActivity, str, bitmap, (BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.d0((Boolean) obj);
            }
        });
    }

    public static void n0(final BaseActivity baseActivity, final String str, final String str2) {
        mc7.K(baseActivity).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return BookmarksViewModel.e0(baseActivity, str, str2, (BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.f0((Boolean) obj);
            }
        });
    }

    public void A(final Bookmark bookmark, BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.K(bookmark, (BookmarksViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.L((Boolean) obj);
            }
        });
    }

    public void B(Context context) {
        if (w6c.c(context, "need_default_bookmark_6", true)) {
            w6c.r(context, "need_default_bookmark_6", false);
            mc7.K(this).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.M((BookmarksViewModel) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    BookmarksViewModel.N((Boolean) obj);
                }
            });
        }
    }

    public List C() {
        ArrayList arrayList = new ArrayList();
        Bookmark bookmark = new Bookmark("Instagram", "https://m.instagram.com/", R.drawable.instagram);
        bookmark.setLoadFromCode(true);
        arrayList.add(bookmark);
        Bookmark bookmark2 = new Bookmark("Tiktok", "https://m.tiktok.com", R.drawable.tiktok);
        bookmark2.setLoadFromCode(true);
        arrayList.add(bookmark2);
        Bookmark bookmark3 = new Bookmark("Tumblr", "https://www.tumblr.com/explore/video", R.drawable.tumblr);
        bookmark3.setLoadFromCode(true);
        arrayList.add(bookmark3);
        Bookmark bookmark4 = new Bookmark("GOmovies", "https://gomovies.sx/home", R.drawable.gomovies);
        bookmark4.setLoadFromCode(true);
        arrayList.add(bookmark4);
        Bookmark bookmark5 = new Bookmark("Vidio", "https://www.vidio.com", R.drawable.vidio);
        bookmark5.setLoadFromCode(true);
        arrayList.add(bookmark5);
        return arrayList;
    }

    public void D(final String str, BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.O(str, (BookmarksViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.P((Boolean) obj);
            }
        });
    }

    public void E(final long j, BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.Q(j, (BookmarksViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.R((Boolean) obj);
            }
        });
    }

    public LiveData F() {
        return this.a;
    }

    public MutableLiveData G() {
        return this.c;
    }

    public void H(final Context context, final int i) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return BookmarksViewModel.S((BookmarksViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.T(context, i, (BookmarkRequest) obj);
            }
        });
    }

    public final Boolean K(Bookmark bookmark, BookmarksViewModel bookmarksViewModel) {
        this.b.insertItem(bookmark);
        return Boolean.TRUE;
    }

    public final Boolean M(BookmarksViewModel bookmarksViewModel) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Bookmark("https://m.facebook.com"));
        arrayList.add(new Bookmark("https://vimeo.com/watch"));
        arrayList.add(new Bookmark("https://m.youtube.com"));
        arrayList.add(new Bookmark("https://www.twitter.com"));
        arrayList.add(new Bookmark("https://fmovies.hn/home"));
        arrayList.add(new Bookmark("https://gomovies.sx/home"));
        arrayList.add(new Bookmark("https://www.ted.com/talks"));
        arrayList.add(new Bookmark("https://www.dailymotion.com"));
        arrayList.add(new Bookmark("https://vimeo.com"));
        arrayList.add(new Bookmark("https://www.ted.com"));
        arrayList.add(new Bookmark("https://gomoviefree.sc/home/"));
        arrayList.add(new Bookmark("https://fmovies.co/home"));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.b.deleteItem(((Bookmark) it.next()).getUri());
        }
        return Boolean.TRUE;
    }

    public final Boolean O(String str, BookmarksViewModel bookmarksViewModel) {
        this.b.deleteItem(str);
        return Boolean.TRUE;
    }

    public final Boolean Q(long j, BookmarksViewModel bookmarksViewModel) {
        this.b.deleteItemById(j);
        return Boolean.TRUE;
    }

    public final void T(Context context, int i, BookmarkRequest bookmarkRequest) {
        g0(bookmarkRequest);
        h0(context, i);
    }

    public final Boolean a0(Bookmark bookmark, BookmarksViewModel bookmarksViewModel) {
        this.b.updateItem(bookmark);
        return Boolean.TRUE;
    }

    public final void g0(BookmarkRequest bookmarkRequest) {
        if (bookmarkRequest == null) {
            bookmarkRequest = new BookmarkRequest();
        }
        BookmarkRequest.EntryKeysBean resolveEntryKeys = bookmarkRequest.getResolveEntryKeys();
        if (resolveEntryKeys == null || resolveEntryKeys.getDataList() == null) {
            BookmarkRequest.EntryKeysBean entryKeysBean = new BookmarkRequest.EntryKeysBean();
            entryKeysBean.setDataList(C());
            entryKeysBean.setSort(1);
            bookmarkRequest.setResolveEntryKeys(entryKeysBean);
        }
        BookmarkRequest.EntryKeysBean prefabricateBookmarkKeys = bookmarkRequest.getPrefabricateBookmarkKeys();
        if (prefabricateBookmarkKeys == null || prefabricateBookmarkKeys.getDataList() == null) {
            BookmarkRequest.EntryKeysBean entryKeysBean2 = new BookmarkRequest.EntryKeysBean();
            entryKeysBean2.setSort(2);
            entryKeysBean2.setDataList(new ArrayList());
            bookmarkRequest.setPrefabricateBookmarkKeys(entryKeysBean2);
        } else {
            prefabricateBookmarkKeys.getDataList().stream().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((Bookmark) obj).setLoadFromCode(true);
                }
            });
        }
        BookmarkRequest.EntryKeysBean posterKeys = bookmarkRequest.getPosterKeys();
        if (posterKeys == null || posterKeys.getDataList() == null) {
            BookmarkRequest.EntryKeysBean entryKeysBean3 = new BookmarkRequest.EntryKeysBean();
            entryKeysBean3.setDataList(new ArrayList());
            entryKeysBean3.setSort(3);
            bookmarkRequest.setPosterKeys(entryKeysBean3);
        }
        this.c.postValue(bookmarkRequest);
    }

    public void h0(Context context, int i) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getDownloadMain(i).d0(k29.c()).M(vb.a()).subscribe(new a(context));
    }

    public void i0(final BookmarkRequest bookmarkRequest, Context context) {
        mc7.K(context).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return BookmarksViewModel.V(bookmarkRequest, (Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }

    public void l0(final Bookmark bookmark, BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.a0(bookmark, (BookmarksViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.b0((Boolean) obj);
            }
        });
    }

    public void z(final ReviewHistory reviewHistory, final BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return BookmarksViewModel.I(baseActivity, reviewHistory, (BookmarksViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModel.J((Boolean) obj);
            }
        });
    }
}
