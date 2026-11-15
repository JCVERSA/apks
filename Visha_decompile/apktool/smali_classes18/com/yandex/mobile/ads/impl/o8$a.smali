.class public final Lcom/yandex/mobile/ads/impl/o8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/o8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Lcom/yandex/mobile/ads/impl/ka0;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private a:Lcom/yandex/mobile/ads/impl/ts;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/yandex/mobile/ads/impl/is;

.field private g:Lcom/yandex/mobile/ads/impl/gz1$a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/yandex/mobile/ads/impl/f;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Long;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/yandex/mobile/ads/impl/m80;

.field private p:Lcom/yandex/mobile/ads/impl/t4;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Lcom/yandex/mobile/ads/impl/hz0;

.field private u:Lcom/yandex/mobile/ads/impl/ur1;

.field private v:Ljava/lang/Long;

.field private w:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/o8$a;->Q:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/o8$a;->S:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/o8$a;->T:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/o8$a;->U:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/o8$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/yandex/mobile/ads/impl/o8$a<",
            "TT;>;"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->w:Ljava/lang/Object;

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/o8;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 21
    new-instance v49, Lcom/yandex/mobile/ads/impl/o8;

    .line 22
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/o8$a;->a:Lcom/yandex/mobile/ads/impl/ts;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o8$a;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/o8$a;->c:Ljava/lang/String;

    .line 23
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/o8$a;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/o8$a;->e:Ljava/lang/String;

    iget v7, v0, Lcom/yandex/mobile/ads/impl/o8$a;->E:I

    iget v8, v0, Lcom/yandex/mobile/ads/impl/o8$a;->F:I

    .line 24
    new-instance v9, Lcom/yandex/mobile/ads/impl/rb0;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->g:Lcom/yandex/mobile/ads/impl/gz1$a;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/mobile/ads/impl/gz1$a;->c:Lcom/yandex/mobile/ads/impl/gz1$a;

    :cond_0
    invoke-direct {v9, v7, v8, v1}, Lcom/yandex/mobile/ads/impl/rb0;-><init>(IILcom/yandex/mobile/ads/impl/gz1$a;)V

    .line 25
    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/o8$a;->h:Ljava/util/List;

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/o8$a;->i:Ljava/util/List;

    .line 26
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/o8$a;->j:Lcom/yandex/mobile/ads/impl/f;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/o8$a;->k:Ljava/util/List;

    .line 27
    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/o8$a;->l:Ljava/lang/Long;

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/o8$a;->m:Ljava/lang/String;

    .line 28
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->n:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->p:Lcom/yandex/mobile/ads/impl/t4;

    move-object/from16 v17, v1

    .line 29
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->q:Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->r:Ljava/util/List;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->x:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 30
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->s:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->y:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->f:Lcom/yandex/mobile/ads/impl/is;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->z:Ljava/lang/String;

    move-object/from16 v24, v1

    .line 31
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->A:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->t:Lcom/yandex/mobile/ads/impl/hz0;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->u:Lcom/yandex/mobile/ads/impl/ur1;

    move-object/from16 v27, v1

    .line 32
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->v:Ljava/lang/Long;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->w:Ljava/lang/Object;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->D:Ljava/util/Map;

    move-object/from16 v30, v1

    .line 33
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->B:Ljava/lang/String;

    move-object/from16 v31, v1

    .line 34
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->C:Ljava/lang/String;

    move-object/from16 v32, v1

    .line 35
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->K:Z

    move/from16 v33, v1

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->L:Z

    move/from16 v34, v1

    .line 36
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->M:Z

    move/from16 v35, v1

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->N:Z

    move/from16 v36, v1

    .line 37
    iget v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->G:I

    move/from16 v37, v1

    iget v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->H:I

    move/from16 v38, v1

    .line 38
    iget v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->I:I

    move/from16 v39, v1

    iget v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->J:I

    move/from16 v40, v1

    .line 39
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->O:Z

    move/from16 v41, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->o:Lcom/yandex/mobile/ads/impl/m80;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->P:Lcom/yandex/mobile/ads/impl/ka0;

    move-object/from16 v43, v1

    .line 40
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->Q:Z

    move/from16 v44, v1

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->R:Z

    move/from16 v45, v1

    .line 41
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->S:Z

    move/from16 v46, v1

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o8$a;->T:Z

    move/from16 v47, v1

    .line 42
    iget-boolean v0, v0, Lcom/yandex/mobile/ads/impl/o8$a;->U:Z

    move/from16 v48, v0

    move-object/from16 v1, v49

    .line 43
    invoke-direct/range {v1 .. v48}, Lcom/yandex/mobile/ads/impl/o8;-><init>(Lcom/yandex/mobile/ads/impl/ts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/yandex/mobile/ads/impl/rb0;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/f;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/yandex/mobile/ads/impl/t4;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/is;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/ur1;Ljava/lang/Long;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZZZZIIIIZLcom/yandex/mobile/ads/impl/m80;Lcom/yandex/mobile/ads/impl/ka0;ZZZZZ)V

    return-object v49
.end method

.method public final a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->J:I

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->j:Lcom/yandex/mobile/ads/impl/f;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gz1$a;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->g:Lcom/yandex/mobile/ads/impl/gz1$a;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hz0;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->t:Lcom/yandex/mobile/ads/impl/hz0;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/is;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->f:Lcom/yandex/mobile/ads/impl/is;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ka0;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->P:Lcom/yandex/mobile/ads/impl/ka0;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/m80;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->o:Lcom/yandex/mobile/ads/impl/m80;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->p:Lcom/yandex/mobile/ads/impl/t4;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ts;)V
    .locals 1

    .line 7
    const-string v0, "adType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->a:Lcom/yandex/mobile/ads/impl/ts;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ur1;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->u:Lcom/yandex/mobile/ads/impl/ur1;

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->l:Ljava/lang/Long;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->y:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    .line 5
    const-string v0, "adNoticeDelays"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->q:Ljava/util/List;

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 1

    .line 9
    const-string v0, "analyticsParameters"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->D:Ljava/util/Map;

    return-void
.end method

.method public final a(Ljava/util/Locale;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->S:Z

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->F:I

    return-void
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->v:Ljava/lang/Long;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->c:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 1

    .line 3
    const-string v0, "adRenderTrackingUrls"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->n:Ljava/util/List;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->U:Z

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->H:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->s:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 1

    .line 3
    const-string v0, "adShowNotice"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->h:Ljava/util/List;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->O:Z

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->I:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->x:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 1

    .line 3
    const-string v0, "adVisibilityPercents"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->r:Ljava/util/List;

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->T:Z

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->E:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->b:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/util/ArrayList;)V
    .locals 1

    .line 3
    const-string v0, "clickTrackingUrls"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->k:Ljava/util/List;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->L:Z

    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->G:I

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->e:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/util/ArrayList;)V
    .locals 1

    .line 2
    const-string v0, "experiments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->i:Ljava/util/List;

    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->N:Z

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->m:Ljava/lang/String;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->R:Z

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->A:Ljava/lang/String;

    return-void
.end method

.method public final h(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->Q:Z

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->C:Ljava/lang/String;

    return-void
.end method

.method public final i(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->K:Z

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->B:Ljava/lang/String;

    return-void
.end method

.method public final j(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->M:Z

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o8$a;->z:Ljava/lang/String;

    return-void
.end method
