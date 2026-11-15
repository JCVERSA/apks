.class public final synthetic Lsgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyrg;


# static fields
.field public static final synthetic a:Lsgg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lsgg;

    invoke-direct {v0}, Lsgg;-><init>()V

    sput-object v0, Lsgg;->a:Lsgg;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkwg;->a:Ljava/util/List;

    invoke-static {}, Lmfj;->c()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
