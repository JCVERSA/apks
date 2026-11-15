.class public final synthetic Lio/appmetrica/analytics/impl/Hd;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Le74;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Id;)V
    .locals 7

    const-string v5, "markCrashCompletedAndDeleteCompletedCrashes(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lio/appmetrica/analytics/impl/Id;

    const-string v4, "markCrashCompletedAndDeleteCompletedCrashes"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/impl/Id;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Id;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->markCrashCompleted(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Id;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    invoke-virtual {p0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->deleteCompletedCrashes()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
