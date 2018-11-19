package grails.plugin

/**
 * Created by User on 26-11-2017.
 */
interface JavascriptProvider {
    /**
     * Creates a remote function call
     *
     * @param The attributes to use
     * @param The output to write to
     */
    def doRemoteFunction(taglib,attrs, out)

    def prepareAjaxForm(attrs)
}