package numbertable

class InputNumberController {

    def index() {
    }

    def generateTable(){
        def model = [:]

        model.num = request.getParameter("num")

       try {
           model.num as Integer
           InputNumber inputNum = new InputNumber()
           inputNum.num = model.num
           inputNum.save(flush: true)
       } catch (Exception e) {
           model.error = true
       }

        render(view: "generateTable", model: model)

    }
}
