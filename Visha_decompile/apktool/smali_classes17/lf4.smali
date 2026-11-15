.class public final Llf4;
.super Lfb2;
.source "SourceFile"


# static fields
.field public static final f:Llf4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llf4;

    invoke-direct {v0}, Llf4;-><init>()V

    sput-object v0, Llf4;->f:Llf4;

    const-string v0, "getDictOptInteger"

    sput-object v0, Llf4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfb2;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Llf4;->g:Ljava/lang/String;

    return-object p0
.end method
