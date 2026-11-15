.class public final Lcom/yandex/div/core/DivPreloader$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/DivPreloader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/DivPreloader$g;->c(Ljn5;)Lcom/yandex/div/core/DivPreloader$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljn5;


# direct methods
.method public constructor <init>(Ljn5;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/DivPreloader$g$a;->b:Ljn5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader$g$a;->b:Ljn5;

    invoke-interface {p0}, Ljn5;->cancel()V

    return-void
.end method
