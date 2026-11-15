.class Lorg/mvel2/ParserContext$1;
.super Lorg/mvel2/ParserContext;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/ParserContext;->createColoringSubcontext()Lorg/mvel2/ParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/ParserContext;


# direct methods
.method constructor <init>(Lorg/mvel2/ParserContext;Lorg/mvel2/ParserConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$100(Lorg/mvel2/ParserContext;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$100(Lorg/mvel2/ParserContext;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$200(Lorg/mvel2/ParserContext;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$200(Lorg/mvel2/ParserContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    .line 3
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$100(Lorg/mvel2/ParserContext;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$100(Lorg/mvel2/ParserContext;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$200(Lorg/mvel2/ParserContext;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$200(Lorg/mvel2/ParserContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    .line 6
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$100(Lorg/mvel2/ParserContext;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$100(Lorg/mvel2/ParserContext;)Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    .line 30
    .line 31
    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$200(Lorg/mvel2/ParserContext;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lorg/mvel2/ParserContext$1;->this$0:Lorg/mvel2/ParserContext;

    .line 42
    .line 43
    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lorg/mvel2/ParserContext;->access$200(Lorg/mvel2/ParserContext;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    :cond_1
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    .line 59
    .line 60
    :cond_2
    invoke-super {p0, p1}, Lorg/mvel2/ParserContext;->getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method
