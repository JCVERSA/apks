.class public Lv55$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv55$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Lv55$c;


# direct methods
.method public constructor <init>(Lv55$c;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lv55$c$a;->c:Ljava/util/Iterator;

    iput-object p1, p0, Lv55$c$a;->d:Lv55$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv55$c$a;->b:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lv55$c$a;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv55$c$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lv55$c$a;->b:Z

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Lv55$c$a;->b:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk71;->e(Z)V

    iget-object p0, p0, Lv55$c$a;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
