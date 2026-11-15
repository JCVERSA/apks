.class public final Lvh4;
.super Lph;
.source "SourceFile"


# static fields
.field public static final g:Lvh4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvh4;

    invoke-direct {v0}, Lvh4;-><init>()V

    sput-object v0, Lvh4;->g:Lvh4;

    const-string v0, "getStringFromArray"

    sput-object v0, Lvh4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lph;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lvh4;->h:Ljava/lang/String;

    return-object p0
.end method
