.class public final Lgob$a$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgob$a;->c(Lgob$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f:Lgob$b;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lgob$b;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lgob$a$c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lgob$a$c;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lgob$a$c;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lgob$a$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lgob$a$c;->f:Lgob$b;

    iput-object p6, p0, Lgob$a$c;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 8

    iget-object p1, p0, Lgob$a$c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v1, Lgob;->a:Lgob$a;

    iget-object p1, p0, Lgob$a$c;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lgob$a$c;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lgob$a$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v5, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v6, p0, Lgob$a$c;->f:Lgob$b;

    iget-object p0, p0, Lgob$a$c;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v7, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v4, 0x1

    invoke-static/range {v1 .. v7}, Lgob$a;->a(Lgob$a;ZZZZLgob$b;Z)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 7

    iget-object p1, p0, Lgob$a$c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v0, Lgob;->a:Lgob$a;

    iget-object p1, p0, Lgob$a$c;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lgob$a$c;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lgob$a$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v5, p0, Lgob$a$c;->f:Lgob$b;

    iget-object p0, p0, Lgob$a$c;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v6, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v3, 0x1

    invoke-static/range {v0 .. v6}, Lgob$a;->a(Lgob$a;ZZZZLgob$b;Z)V

    return-void
.end method
