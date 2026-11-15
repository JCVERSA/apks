.class public final synthetic Lw9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyrg;


# static fields
.field public static final synthetic a:Lw9f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lw9f;

    invoke-direct {v0}, Lw9f;-><init>()V

    sput-object v0, Lw9f;->a:Lw9f;

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

    invoke-static {}, Lefj;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
