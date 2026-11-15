.class public final synthetic Lpka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/onlinevideo/tiktok/repository/a;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpka;->b:Ljava/lang/String;

    iput-object p2, p0, Lpka;->c:Lcom/transsion/onlinevideo/tiktok/repository/a;

    iput-object p3, p0, Lpka;->d:Ljava/util/List;

    iput-object p4, p0, Lpka;->e:Ljava/lang/String;

    iput-object p5, p0, Lpka;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lpka;->b:Ljava/lang/String;

    iget-object v1, p0, Lpka;->c:Lcom/transsion/onlinevideo/tiktok/repository/a;

    iget-object v2, p0, Lpka;->d:Ljava/util/List;

    iget-object v3, p0, Lpka;->e:Ljava/lang/String;

    iget-object v4, p0, Lpka;->f:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Lcom/transsion/onlinevideo/tiktok/repository/a$b;

    invoke-static/range {v0 .. v5}, Lcom/transsion/onlinevideo/tiktok/repository/a;->j(Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/repository/a$b;)Lzfb;

    move-result-object p0

    return-object p0
.end method
