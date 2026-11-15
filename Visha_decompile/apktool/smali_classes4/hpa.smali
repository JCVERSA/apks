.class public Lhpa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "hpa"


# instance fields
.field public volatile a:Z

.field public b:Z

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ltod;

.field public g:Les6;

.field public h:Lcom/mq/mgmi/client/message/n;

.field public i:[Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lf9d;

.field public l:Lv7d;

.field public m:Ljava/lang/Object;

.field public n:I

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "com.mq.mgmi.client.message.internal.nls.logcat"

    sget-object v0, Lhpa;->p:Ljava/lang/String;

    invoke-static {p1, v0}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhpa;->a:Z

    iput-boolean p1, p0, Lhpa;->b:Z

    iput-boolean p1, p0, Lhpa;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhpa;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhpa;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lhpa;->f:Ltod;

    iput-object v0, p0, Lhpa;->g:Les6;

    iput-object v0, p0, Lhpa;->h:Lcom/mq/mgmi/client/message/n;

    iput-object v0, p0, Lhpa;->i:[Ljava/lang/String;

    iput-object v0, p0, Lhpa;->k:Lf9d;

    iput-object v0, p0, Lhpa;->l:Lv7d;

    iput-object v0, p0, Lhpa;->m:Ljava/lang/Object;

    iput p1, p0, Lhpa;->n:I

    iput-boolean p1, p0, Lhpa;->o:Z

    throw v0
.end method


# virtual methods
.method public a()Lv7d;
    .locals 0

    iget-object p0, p0, Lhpa;->l:Lv7d;

    return-object p0
.end method

.method public b()Lcom/mq/mgmi/client/message/n;
    .locals 0

    iget-object p0, p0, Lhpa;->h:Lcom/mq/mgmi/client/message/n;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhpa;->j:Ljava/lang/String;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lhpa;->n:I

    return p0
.end method

.method public e()Les6;
    .locals 0

    iget-object p0, p0, Lhpa;->g:Les6;

    return-object p0
.end method

.method public f()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhpa;->i:[Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhpa;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lhpa;->a:Z

    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lhpa;->o:Z

    return p0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lhpa;->n:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lhpa;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ,topics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lhpa;->f()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lhpa;->f()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lhpa;->f()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, " ,usercontext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lhpa;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,isComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lhpa;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,isNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lhpa;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lhpa;->b()Lcom/mq/mgmi/client/message/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,actioncallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lhpa;->a()Lv7d;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
