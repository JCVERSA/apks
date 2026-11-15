.class public final synthetic Lxog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyrg;


# static fields
.field public static final synthetic a:Lxog;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lxog;

    invoke-direct {v0}, Lxog;-><init>()V

    sput-object v0, Lxog;->a:Lxog;

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

    invoke-static {}, Lscj;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
