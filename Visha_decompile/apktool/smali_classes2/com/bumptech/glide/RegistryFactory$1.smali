.class Lcom/bumptech/glide/RegistryFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/RegistryFactory;->lazilyCreateAndInitializeRegistry(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
        "Lcom/bumptech/glide/Registry;",
        ">;"
    }
.end annotation


# instance fields
.field private isInitializingOrInitialized:Z

.field final synthetic val$annotationGeneratedModule:Lcom/bumptech/glide/module/AppGlideModule;

.field final synthetic val$glide:Lcom/bumptech/glide/Glide;

.field final synthetic val$manifestModules:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/RegistryFactory$1;->val$glide:Lcom/bumptech/glide/Glide;

    iput-object p2, p0, Lcom/bumptech/glide/RegistryFactory$1;->val$manifestModules:Ljava/util/List;

    iput-object p3, p0, Lcom/bumptech/glide/RegistryFactory$1;->val$annotationGeneratedModule:Lcom/bumptech/glide/module/AppGlideModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/bumptech/glide/Registry;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/RegistryFactory$1;->isInitializingOrInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/RegistryFactory$1;->isInitializingOrInitialized:Z

    .line 4
    const-string v0, "Glide registry"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RegistryFactory$1;->val$glide:Lcom/bumptech/glide/Glide;

    iget-object v1, p0, Lcom/bumptech/glide/RegistryFactory$1;->val$manifestModules:Ljava/util/List;

    iget-object p0, p0, Lcom/bumptech/glide/RegistryFactory$1;->val$annotationGeneratedModule:Lcom/bumptech/glide/module/AppGlideModule;

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/RegistryFactory;->createAndInitRegistry(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)Lcom/bumptech/glide/Registry;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 7
    throw p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RegistryFactory$1;->get()Lcom/bumptech/glide/Registry;

    move-result-object p0

    return-object p0
.end method
