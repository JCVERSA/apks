.class public final Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewPreCreationProfileSerializer"
.end annotation


# static fields
.field public static final a:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;

.field public static final b:Lu95;

.field public static final c:Lddc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;

    invoke-direct {v0}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;-><init>()V

    sput-object v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;->a:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;

    sget-object v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer$json$1;->INSTANCE:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer$json$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lva5;->b(Lu95;Le74;ILjava/lang/Object;)Lu95;

    move-result-object v0

    sput-object v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;->b:Lu95;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lddc;
    .locals 0

    sget-object p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;->c:Lddc;

    return-object p0
.end method

.method public b(Lddc;Ljava/io/OutputStream;Lwh1;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;->b:Lu95;

    invoke-virtual {p0}, Lu95;->a()Ltd9;

    move-result-object p3

    const-class v0, Lddc;

    invoke-static {v0}, Lxq8;->h(Ljava/lang/Class;)Lff5;

    move-result-object v0

    invoke-static {p3, v0}, Lsd9;->b(Ltd9;Lff5;)Lef5;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Lpd5;->b(Lu95;Lnd9;Ljava/lang/Object;Ljava/io/OutputStream;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lne5;->a:Lne5;

    sget-object p2, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {p1, p2}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    const-string p2, "OptimizedViewPreCreationProfileRepository"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;->a()Lddc;

    move-result-object p0

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;Lwh1;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;->b:Lu95;

    invoke-virtual {p0}, Lu95;->a()Ltd9;

    move-result-object p2

    const-class v0, Lddc;

    invoke-static {v0}, Lxq8;->h(Ljava/lang/Class;)Lff5;

    move-result-object v0

    invoke-static {p2, v0}, Lsd9;->b(Ltd9;Lff5;)Lef5;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lpd5;->a(Lu95;Lk92;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lddc;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lne5;->a:Lne5;

    sget-object v0, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {p2, v0}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ""

    const-string v0, "OptimizedViewPreCreationProfileRepository"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lwh1;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lddc;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;->b(Lddc;Ljava/io/OutputStream;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
