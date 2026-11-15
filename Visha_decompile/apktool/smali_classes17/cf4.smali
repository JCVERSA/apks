.class public final Lcf4;
.super Lyh0;
.source "SourceFile"


# static fields
.field public static final g:Lcf4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcf4;

    invoke-direct {v0}, Lcf4;-><init>()V

    sput-object v0, Lcf4;->g:Lcf4;

    const-string v0, "getDictBoolean"

    sput-object v0, Lcf4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyh0;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcf4;->h:Ljava/lang/String;

    return-object p0
.end method
