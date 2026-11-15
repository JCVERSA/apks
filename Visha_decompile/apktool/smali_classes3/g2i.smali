.class public abstract Lg2i;
.super Le2i;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Le2i;-><init>()V

    const-string p1, "CharMatcher.none()"

    iput-object p1, p0, Lg2i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg2i;->b:Ljava/lang/String;

    return-object p0
.end method
