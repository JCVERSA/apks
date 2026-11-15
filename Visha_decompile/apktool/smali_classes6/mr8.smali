.class public final Lmr8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmr8;

.field public static final b:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmr8;

    invoke-direct {v0}, Lmr8;-><init>()V

    sput-object v0, Lmr8;->a:Lmr8;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[a-zA-Z0-9.-]+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmr8;->b:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lmr8;->b:Lkotlin/text/Regex;

    return-object p0
.end method
