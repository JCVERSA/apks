.class public Lorg/mozilla/javascript/tools/debugger/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/tools/debugger/d$a;
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/Class;

.field public static final d:[Lorg/mozilla/javascript/tools/debugger/d$a;


# instance fields
.field public a:Lorg/mozilla/javascript/tools/debugger/Dim;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, " Name"

    const-string v1, " Value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/tools/debugger/d;->b:[Ljava/lang/String;

    const-class v0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    const-class v1, Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/tools/debugger/d;->c:[Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/mozilla/javascript/tools/debugger/d$a;

    sput-object v0, Lorg/mozilla/javascript/tools/debugger/d;->d:[Lorg/mozilla/javascript/tools/debugger/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/mozilla/javascript/tools/debugger/d$a;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/d;->a:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/d$a;->a(Lorg/mozilla/javascript/tools/debugger/d$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/d$a;->b(Lorg/mozilla/javascript/tools/debugger/d$a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->getObjectProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "undefined"

    return-object p0
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lorg/mozilla/javascript/tools/debugger/d;->c:[Ljava/lang/Class;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getColumnCount()I
    .locals 0

    sget-object p0, Lorg/mozilla/javascript/tools/debugger/d;->b:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/mozilla/javascript/tools/debugger/d;->b:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getValueAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/d;->a:Lorg/mozilla/javascript/tools/debugger/Dim;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/d;->a:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/d;->a(Lorg/mozilla/javascript/tools/debugger/d$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x20

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    throw v1
.end method

.method public isCellEditable(Ljava/lang/Object;I)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setValueAt(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method
