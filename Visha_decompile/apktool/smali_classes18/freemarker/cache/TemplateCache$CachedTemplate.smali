.class final Lfreemarker/cache/TemplateCache$CachedTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/TemplateCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedTemplate"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field lastChecked:J

.field lastModified:J

.field source:Ljava/lang/Object;

.field templateOrException:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Luea;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/cache/TemplateCache$CachedTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneCachedTemplate()Lfreemarker/cache/TemplateCache$CachedTemplate;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/cache/TemplateCache$CachedTemplate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
