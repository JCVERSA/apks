.class public Ltm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final synthetic c:Ltm0;


# direct methods
.method public constructor <init>(Ltm0;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Ltm0$a;->c:Ltm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Ltm0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ltm0;Ljava/lang/String;Lam0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ltm0$a;-><init>(Ltm0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ltm0$a;->c:Ltm0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->Z(Ljava/util/List;I)V

    iget-object v0, p0, Ltm0$a;->b:Ljava/lang/String;

    iget-object p0, p0, Ltm0$a;->c:Ltm0;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_0
    return-object p0
.end method
