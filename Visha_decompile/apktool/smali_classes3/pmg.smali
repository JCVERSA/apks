.class public final synthetic Lpmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyrg;


# static fields
.field public static final synthetic a:Lpmg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lpmg;

    invoke-direct {v0}, Lpmg;-><init>()V

    sput-object v0, Lpmg;->a:Lpmg;

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

    invoke-static {}, Lscj;->G()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
