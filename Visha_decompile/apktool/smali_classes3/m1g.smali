.class public final synthetic Lm1g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyrg;


# static fields
.field public static final synthetic a:Lm1g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1g;

    invoke-direct {v0}, Lm1g;-><init>()V

    sput-object v0, Lm1g;->a:Lm1g;

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

    invoke-static {}, Lscj;->H()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
