.class public final synthetic Li7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn5;


# instance fields
.field public final synthetic a:Lokhttp3/Call;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7a;->a:Lokhttp3/Call;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    iget-object p0, p0, Li7a;->a:Lokhttp3/Call;

    invoke-static {p0}, Lcom/yandex/div/svg/SvgDivImageLoader;->b(Lokhttp3/Call;)V

    return-void
.end method
