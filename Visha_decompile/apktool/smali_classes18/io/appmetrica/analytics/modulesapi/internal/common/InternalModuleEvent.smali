.class public final Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;,
        Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cJ\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0002J\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002J\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0012R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;",
        "",
        "",
        "",
        "getEnvironment",
        "",
        "getExtras",
        "getAttributes",
        "toString",
        "",
        "a",
        "I",
        "getType",
        "()I",
        "type",
        "b",
        "Ljava/lang/String;",
        "getName",
        "()Ljava/lang/String;",
        "name",
        "c",
        "getValue",
        "value",
        "d",
        "Ljava/lang/Integer;",
        "getServiceDataReporterType",
        "()Ljava/lang/Integer;",
        "serviceDataReporterType",
        "Companion",
        "Builder",
        "modules-api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->Companion:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;

    return-void
.end method

.method private constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getType$modules_api_release()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->a:I

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getServiceDataReporterType()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->d:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getEnvironment()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->e:Ljava/util/List;

    .line 8
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->f:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->g:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;-><init>(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;)V

    return-void
.end method

.method public static final newBuilder(I)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->Companion:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;->newBuilder(I)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAttributes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->g:Ljava/util/List;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getMapFromListOrNull(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getEnvironment()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->e:Ljava/util/List;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getMapFromListOrNull(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->f:Ljava/util/List;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getMapFromListOrNull(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceDataReporterType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->a:I

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModuleEvent{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', serviceDataReporterType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", environment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
