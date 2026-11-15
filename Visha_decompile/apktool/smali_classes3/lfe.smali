.class public final Llfe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsfe;

.field public final b:Lvfe;

.field public final c:Lrae;

.field public final d:Lsae;

.field public e:I


# direct methods
.method public constructor <init>(Lsfe;Lvfe;Lrae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llfe;->a:Lsfe;

    iput-object p2, p0, Llfe;->b:Lvfe;

    iput-object p3, p0, Llfe;->c:Lrae;

    iget-object p1, p1, Lsfe;->g:Lerj;

    iget-object p1, p1, Lerj;->o:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lsae;

    invoke-direct {p1}, Lsae;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Llfe;->d:Lsae;

    return-void
.end method
