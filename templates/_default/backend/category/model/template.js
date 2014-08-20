/**
 * Shopware 4.0
 * Copyright © 2012 shopware AG
 *
 * According to our dual licensing model, this program can be used either
 * under the terms of the GNU Affero General Public License, version 3,
 * or under a proprietary license.
 *
 * The texts of the GNU Affero General Public License with an additional
 * permission and of our proprietary license can be found at and
 * in the LICENSE file you have received along with this program.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * "Shopware" is a registered trademark of shopware AG.
 * The licensing of the program under the AGPLv3 does not imply a
 * trademark license. Therefore any rights, title and interest in
 * our trademarks remain entirely with us.
 *
 * @category   Shopware
 * @package    Category
 * @subpackage Model
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author shopware AG
 */

/* {namespace name=backend/category/main} */

/**
 * Shopware Model - Template settings
 * 
 * Model to access the settings for category templates aka sCATEGORYTEMPLATES
 */
//{block name="backend/category/model/template"}
Ext.define('Shopware.apps.Category.model.Template', {

    /**
     * Extends the standard Ext Model
     * @string
     */
    extend:'Ext.data.Model',
    /**
     * If the name of the field is 'id' extjs assumes automatically that
     * this field is an unique identifier.
     * @integer
     */
    idProperty : 'template',
    /**
     * The fields used for this model
     * @array
     */
    fields:[
		// {block name="backend/category/model/template/fields"}{/block}
        { name : 'template', type: 'string' },
        { name : 'name', type: 'string' } 
    ]
});

//{/block}