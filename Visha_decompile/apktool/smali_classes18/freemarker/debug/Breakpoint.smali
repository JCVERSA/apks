.class public Lfreemarker/debug/Breakpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final line:I

.field private final templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    iput p2, p0, Lfreemarker/debug/Breakpoint;->line:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lfreemarker/debug/Breakpoint;

    iget-object v0, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    iget-object v1, p1, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lfreemarker/debug/Breakpoint;->line:I

    iget p1, p1, Lfreemarker/debug/Breakpoint;->line:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lfreemarker/debug/Breakpoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/debug/Breakpoint;

    iget-object v0, p1, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lfreemarker/debug/Breakpoint;->line:I

    iget p0, p0, Lfreemarker/debug/Breakpoint;->line:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getLine()I
    .locals 0

    iget p0, p0, Lfreemarker/debug/Breakpoint;->line:I

    return p0
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lfreemarker/debug/Breakpoint;->line:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lfreemarker/debug/Breakpoint;->line:I

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method
