.class public final synthetic Ljad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljad;->b:Ljava/util/List;

    iput-wide p2, p0, Ljad;->c:J

    iput-object p4, p0, Ljad;->d:Ljava/lang/String;

    iput-object p5, p0, Ljad;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ljad;->b:Ljava/util/List;

    iget-wide v1, p0, Ljad;->c:J

    iget-object v3, p0, Ljad;->d:Ljava/lang/String;

    iget-object v4, p0, Ljad;->e:Landroid/os/Bundle;

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/e;->a(Ljava/util/List;JLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lzfb;

    move-result-object p0

    return-object p0
.end method
