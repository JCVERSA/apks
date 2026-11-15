.class public abstract enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/reflections/vfs/Vfs$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "DefaultUrlTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/reflections/vfs/Vfs$DefaultUrlTypes;",
        ">;",
        "Lorg/reflections/vfs/Vfs$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum bundle:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum directory:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarFile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarInputStream:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarUrl:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jboss_vfs:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jboss_vfsfile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$1;

    const-string v1, "jarFile"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarFile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    new-instance v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$2;

    const-string v3, "jarUrl"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarUrl:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    new-instance v3, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$3;

    const-string v5, "directory"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->directory:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    new-instance v5, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$4;

    const-string v7, "jboss_vfs"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfs:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    new-instance v7, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$5;

    const-string v9, "jboss_vfsfile"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfsfile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    new-instance v9, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$6;

    const-string v11, "bundle"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->bundle:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    new-instance v11, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$7;

    const-string v13, "jarInputStream"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarInputStream:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->$VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/reflections/vfs/Vfs$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
    .locals 1

    const-class v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-object p0
.end method

.method public static values()[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
    .locals 1

    sget-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->$VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    invoke-virtual {v0}, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-object v0
.end method


# virtual methods
.method public abstract synthetic createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract synthetic matches(Ljava/net/URL;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
