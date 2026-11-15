.class public final Lrg4;
.super Lgh;
.source "SourceFile"


# static fields
.field public static final f:Lrg4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrg4;

    invoke-direct {v0}, Lrg4;-><init>()V

    sput-object v0, Lrg4;->f:Lrg4;

    const-string v0, "getOptColorFromArray"

    sput-object v0, Lrg4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lrg4;->g:Ljava/lang/String;

    return-object p0
.end method
