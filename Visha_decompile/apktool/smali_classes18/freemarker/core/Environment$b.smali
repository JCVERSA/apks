.class public final Lfreemarker/core/Environment$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/core/Environment$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lfreemarker/core/Environment$b;->b:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lfreemarker/core/Environment$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/core/Environment$b;

    iget-object v0, p1, Lfreemarker/core/Environment$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/core/Environment$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lfreemarker/core/Environment$b;->b:Ljava/util/Locale;

    iget-object p0, p0, Lfreemarker/core/Environment$b;->b:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lfreemarker/core/Environment$b;->b:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
