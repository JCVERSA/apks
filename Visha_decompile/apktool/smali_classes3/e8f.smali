.class public final synthetic Le8f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyrg;


# static fields
.field public static final synthetic a:Le8f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le8f;

    invoke-direct {v0}, Le8f;-><init>()V

    sput-object v0, Le8f;->a:Le8f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lkwg;->a:Ljava/util/List;

    invoke-static {}, Lscj;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
