.class public final Lru/zdevs/zarchiver/ZArchiver$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZArchiver;->e(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg0/y;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lg0/y;I)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$b;->a:Lg0/y;

    iput p2, p0, Lru/zdevs/zarchiver/ZArchiver$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver$b;->a:Lg0/y;

    .line 2
    .line 3
    iget-object v1, v0, Lg0/y;->h:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lru/zdevs/zarchiver/ZArchiver$b;->b:I

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lg0/y;->h:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
