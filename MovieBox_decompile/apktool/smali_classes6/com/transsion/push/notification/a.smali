.class public abstract Lcom/transsion/push/notification/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:I

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Bitmap;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Landroid/widget/RemoteViews;

.field private s:Landroid/widget/RemoteViews;

.field private t:Landroid/app/PendingIntent;

.field private u:Landroid/app/PendingIntent;

.field private v:Landroid/app/PendingIntent;

.field private w:Landroid/app/PendingIntent;

.field private x:Landroid/app/PendingIntent;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lcom/transsion/push/notification/a;->a:I

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/transsion/push/notification/a;->g:Z

    .line 13
    .line 14
    sget p2, Lcom/transsion/lib/push/R$drawable;->push_small_logo:I

    .line 15
    .line 16
    iput p2, p0, Lcom/transsion/push/notification/a;->h:I

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/transsion/push/notification/a;->y:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/transsion/push/notification/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public B(Ljava/lang/String;)Lcom/transsion/push/notification/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final C(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->s:Landroid/widget/RemoteViews;

    .line 2
    .line 3
    return-void
.end method

.method public final D(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->r:Landroid/widget/RemoteViews;

    .line 2
    .line 3
    return-void
.end method

.method public E(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->u:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object p0
.end method

.method public F(Ljava/lang/String;)Lcom/transsion/push/notification/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/push/notification/a;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public H(Landroid/graphics/Bitmap;)Lcom/transsion/push/notification/a;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/transsion/push/notification/a;->m:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final I(Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->w:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-void
.end method

.method public final J(Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->x:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-void
.end method

.method public final K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/push/notification/a;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public L(I)Lcom/transsion/push/notification/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/notification/a;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final M(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/notification/a;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public final N(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/push/notification/a;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public O(J)Lcom/transsion/push/notification/a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/push/notification/a;->j:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->n:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->v:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "channelId"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/notification/a;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->t:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->s:Landroid/widget/RemoteViews;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->r:Landroid/widget/RemoteViews;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->m:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->w:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->x:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/notification/a;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/notification/a;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/notification/a;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/notification/a;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/notification/a;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/notification/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/notification/a;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/notification/a;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public x(Ljava/lang/String;)Lcom/transsion/push/notification/a;
    .locals 1

    .line 1
    const-string v0, "channelId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/push/notification/a;->y(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/push/notification/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public z(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/a;->t:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object p0
.end method
