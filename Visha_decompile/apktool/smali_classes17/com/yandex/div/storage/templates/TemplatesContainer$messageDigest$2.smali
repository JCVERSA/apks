.class final Lcom/yandex/div/storage/templates/TemplatesContainer$messageDigest$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/storage/templates/TemplatesContainer;-><init>(Lcom/yandex/div/storage/b;Llx7;Lpq4;Loj8;Lnq4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/security/MessageDigest;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yandex/div/storage/templates/TemplatesContainer;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/templates/TemplatesContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/storage/templates/TemplatesContainer$messageDigest$2;->this$0:Lcom/yandex/div/storage/templates/TemplatesContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/storage/templates/TemplatesContainer$messageDigest$2;->invoke()Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/security/MessageDigest;
    .locals 3

    .line 2
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object p0, p0, Lcom/yandex/div/storage/templates/TemplatesContainer$messageDigest$2;->this$0:Lcom/yandex/div/storage/templates/TemplatesContainer;

    invoke-static {p0}, Lcom/yandex/div/storage/templates/TemplatesContainer;->a(Lcom/yandex/div/storage/templates/TemplatesContainer;)Llx7;

    move-result-object p0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Storage cannot work with templates!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Llx7;->c(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
